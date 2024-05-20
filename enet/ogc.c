/** 
 @file  unix.c
 @brief ENet Unix system specific functions
*/
#if defined(__WII__) || defined(__GAMECUBE__)

#include "enet/ogc.h"

#include <sys/fcntl.h>
#include <sys/types.h>
#include <sys/time.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <time.h>

#define SOMAXCONN 5

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#define ENET_BUILDING_LIB 1
#include "enet/enet.h"


#ifdef HAS_POLL
#include <sys/poll.h>
#endif

#ifndef MSG_NOSIGNAL
#define MSG_NOSIGNAL 0
#endif

static enet_uint32 timeBase = 0;

int
enet_initialize (void)
{
    return 0;
}

void
enet_deinitialize (void)
{
}

enet_uint32
enet_time_get (void)
{
    struct timeval timeVal;

    gettimeofday (& timeVal, NULL);

    return timeVal.tv_sec * 1000 + timeVal.tv_usec / 1000 - timeBase;
}

void
enet_time_set (enet_uint32 newTimeBase)
{
    struct timeval timeVal;

    gettimeofday (& timeVal, NULL);
    
    timeBase = timeVal.tv_sec * 1000 + timeVal.tv_usec / 1000 - newTimeBase;
}

int
enet_address_set_host (ENetAddress * address, const char * name)
{
    struct hostent * hostEntry = NULL;
    hostEntry = net_gethostbyname (name);

    if (hostEntry == NULL ||
        hostEntry -> h_addrtype != AF_INET)
    {
        if (! inet_aton (name, (struct in_addr *) & address -> host))
            return -1;
        return 0;
    }

    address -> host = * (enet_uint32 *) hostEntry -> h_addr_list [0];

    return 0;
}

int
enet_address_get_host (const ENetAddress * address, char * name, size_t nameLength)
{
    struct in_addr in;

    in.s_addr = net_gethostip();

    char * addr = inet_ntoa (in);
    if (addr != NULL)
        strncpy (name, addr, nameLength);
    else
        return -1;
    return 0;
}

ENetSocket
enet_socket_create (ENetSocketType type, const ENetAddress * address)
{
    ENetSocket newSocket = net_socket (PF_INET, type == ENET_SOCKET_TYPE_DATAGRAM ? SOCK_DGRAM : SOCK_STREAM, 0);
    int receiveBufferSize = ENET_HOST_RECEIVE_BUFFER_SIZE,
        allowBroadcasting = 1;
    int nonBlocking = 1;
    struct sockaddr_in sin;

    if (newSocket == ENET_SOCKET_NULL)
      return ENET_SOCKET_NULL;

    if (type == ENET_SOCKET_TYPE_DATAGRAM)
    {
        net_fcntl (newSocket, F_SETFL, O_NONBLOCK | net_fcntl (newSocket, F_GETFL, 0));

        net_setsockopt (newSocket, SOL_SOCKET, SO_RCVBUF, (char *) & receiveBufferSize, sizeof (int));
        net_setsockopt (newSocket, SOL_SOCKET, SO_BROADCAST, (char *) & allowBroadcasting, sizeof (int));
    }
    
    if (address == NULL)
      return newSocket;

    memset (& sin, 0, sizeof (struct sockaddr_in));

    sin.sin_family = AF_INET;
    sin.sin_port = ENET_HOST_TO_NET_16 (address -> port);
    sin.sin_addr.s_addr = address -> host;

    if (net_bind (newSocket, 
              (struct sockaddr *) & sin,
              sizeof (struct sockaddr_in)) == -1 ||
        (type == ENET_SOCKET_TYPE_STREAM &&
          net_listen (newSocket, SOMAXCONN) == -1))
    {
       net_close (newSocket);

       return ENET_SOCKET_NULL;
    }

    return newSocket;
}

int
enet_socket_connect (ENetSocket socket, const ENetAddress * address)
{
    struct sockaddr_in sin;

    memset (& sin, 0, sizeof (struct sockaddr_in));

    sin.sin_family = AF_INET;
    sin.sin_port = ENET_HOST_TO_NET_16 (address -> port);
    sin.sin_addr.s_addr = address -> host;

    return net_connect (socket, (struct sockaddr *) & sin, sizeof (struct sockaddr_in));
}

ENetSocket
enet_socket_accept (ENetSocket socket, ENetAddress * address)
{
    int result;
    struct sockaddr_in sin;
    socklen_t sinLength = sizeof (struct sockaddr_in);

    result = net_accept (socket, 
                     address != NULL ? (struct sockaddr *) & sin : NULL, 
                     address != NULL ? & sinLength : NULL);
    
    if (result == -1)
      return ENET_SOCKET_NULL;

    if (address != NULL)
    {
        address -> host = (enet_uint32) sin.sin_addr.s_addr;
        address -> port = ENET_NET_TO_HOST_16 (sin.sin_port);
    }

    return result;
} 
    
void
enet_socket_destroy (ENetSocket socket)
{
    net_close (socket);
}

int
enet_socket_send (ENetSocket socket,
                  const ENetAddress * address,
                  const ENetBuffer * buffers,
                  size_t bufferCount)
{
    struct sockaddr_in sin;
    struct sockaddr *to = NULL;
    socklen_t tolen = 0;
    int sentLength = 0;

    if (address != NULL)
    {
        sin.sin_family = AF_INET;
        sin.sin_port = ENET_HOST_TO_NET_16 (address -> port);
        sin.sin_addr.s_addr = address -> host;

        to = (struct sockaddr*)&sin;
        tolen = sizeof(sin);
    }

    for (int i = 0; i < bufferCount; i++) {
        int rc = net_sendto (socket, buffers[i].data, buffers[i].dataLength, 0,
                             to, tolen);
        if (rc < 0)
        {
           if (errno == EWOULDBLOCK)
             return 0;

           return -1;
        }
        sentLength += rc;
    }

    return sentLength;
}

int
enet_socket_receive (ENetSocket socket,
                     ENetAddress * address,
                     ENetBuffer * buffers,
                     size_t bufferCount)
{
    struct sockaddr_in sin;
    struct sockaddr *from = NULL;
    socklen_t fromlen = 0, *fromlenptr = NULL;
    int recvLength;

    if (address != NULL)
    {
        from = (struct sockaddr*)&sin;
        fromlen = sizeof (struct sockaddr_in);
        fromlenptr = &fromlen;
    }

    recvLength = net_recvfrom (socket, buffers[0].data, buffers[0].dataLength, 0,
                               from, fromlenptr);

    if (recvLength == -1)
    {
       if (errno == EWOULDBLOCK)
         return 0;

       return -1;
    }

    if (address != NULL)
    {
        address -> host = (enet_uint32) sin.sin_addr.s_addr;
        address -> port = ENET_NET_TO_HOST_16 (sin.sin_port);
    }

    return recvLength;
}

int
enet_socket_wait (ENetSocket socket, enet_uint32 * condition, enet_uint32 timeout)
{
#ifdef __WII__ /* has poll */
    struct pollsd pollSocket;
    int pollCount;
    
    pollSocket.socket = socket;
    pollSocket.events = 0;

    if (* condition & ENET_SOCKET_WAIT_SEND)
      pollSocket.events |= POLLOUT;

    if (* condition & ENET_SOCKET_WAIT_RECEIVE)
      pollSocket.events |= POLLIN;

    pollCount = net_poll (& pollSocket, 1, timeout);

    if (pollCount < 0)
      return -1;

    * condition = ENET_SOCKET_WAIT_NONE;

    if (pollCount == 0)
      return 0;

    if (pollSocket.revents & POLLOUT)
      * condition |= ENET_SOCKET_WAIT_SEND;
    
    if (pollSocket.revents & POLLIN)
      * condition |= ENET_SOCKET_WAIT_RECEIVE;

    return 0;
#else
    fd_set readSet, writeSet;
    struct timeval timeVal;
    int selectCount;

    timeVal.tv_sec = timeout / 1000;
    timeVal.tv_usec = (timeout % 1000) * 1000;

    FD_ZERO (& readSet);
    FD_ZERO (& writeSet);

    if (* condition & ENET_SOCKET_WAIT_SEND)
      FD_SET (socket, & writeSet);

    if (* condition & ENET_SOCKET_WAIT_RECEIVE)
      FD_SET (socket, & readSet);

    selectCount = select (socket + 1, & readSet, & writeSet, NULL, & timeVal);

    if (selectCount < 0)
      return -1;

    * condition = ENET_SOCKET_WAIT_NONE;

    if (selectCount == 0)
      return 0;

    if (FD_ISSET (socket, & writeSet))
      * condition |= ENET_SOCKET_WAIT_SEND;

    if (FD_ISSET (socket, & readSet))
      * condition |= ENET_SOCKET_WAIT_RECEIVE;

    return 0;
#endif
}

#endif

