; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Crack-Attack!"
!define PRODUCT_VERSION "1.1.14-cvs"
!define PRODUCT_WEB_SITE "http://savannah.nongnu.org/projects/crack-attack"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\crack-attack.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
!define PRODUCT_STARTMENU_REGVAL "NSIS:StartMenuDir"

SetCompressor bzip2

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "cube_icon.ico"
!define MUI_UNICON "cube_icon.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "Crack-Attack\COPYING.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Start menu page
var ICONS_GROUP
!define MUI_STARTMENUPAGE_NODISABLE
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "Crack-Attack!"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${PRODUCT_STARTMENU_REGVAL}"
!insertmacro MUI_PAGE_STARTMENU Application $ICONS_GROUP
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\README.txt"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; Reserve files
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Crack-Attack ${PRODUCT_VERSION} Setup.exe"
InstallDir "$PROGRAMFILES\Crack-Attack"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite try
  File "Crack-Attack\COPYING.LIB-2"
  File "Crack-Attack\README.libiconv"
  File "Crack-Attack\README.txt"
  File "Crack-Attack\COPYING.txt"
  SetOutPath "$INSTDIR\bin"
  File "Crack-Attack\bin\gettext.sh"
  File "Crack-Attack\bin\crack-attack.exe"
  File "Crack-Attack\bin\crack-attack-gui.exe"
  File "Crack-Attack\bin\envsubst.exe"
  File "Crack-Attack\bin\gettext.exe"
  File "Crack-Attack\bin\iconv.exe"
  File "Crack-Attack\bin\ngettext.exe"
  File "Crack-Attack\bin\asprintf.dll"
  File "Crack-Attack\bin\charset.dll"
  File "Crack-Attack\bin\freetype6.dll"
  File "Crack-Attack\bin\gspawn-win32-helper.exe"
  File "Crack-Attack\bin\iconv.dll"
  File "Crack-Attack\bin\intl.dll"
  File "Crack-Attack\bin\jpeg62.dll"
  File "Crack-Attack\bin\libatk-1.0-0.dll"
  File "Crack-Attack\bin\libexpat-0.dll"
  File "Crack-Attack\bin\libfontconfig-1.dll"
  File "Crack-Attack\bin\libgdk-win32-2.0-0.dll"
  File "Crack-Attack\bin\libgdk_pixbuf-2.0-0.dll"
  File "Crack-Attack\bin\libglib-2.0-0.dll"
  File "Crack-Attack\bin\libgmodule-2.0-0.dll"
  File "Crack-Attack\bin\libgobject-2.0-0.dll"
  File "Crack-Attack\bin\libgthread-2.0-0.dll"
  File "Crack-Attack\bin\libgtk-win32-2.0-0.dll"
  File "Crack-Attack\bin\libpango-1.0-0.dll"
  File "Crack-Attack\bin\libpangoft2-1.0-0.dll"
  File "Crack-Attack\bin\libpangowin32-1.0-0.dll"
  File "Crack-Attack\bin\libpng12.dll"
  File "Crack-Attack\bin\libpng13.dll"
  File "Crack-Attack\bin\libtiff3.dll"
  File "Crack-Attack\bin\pango-querymodules.exe"
  File "Crack-Attack\bin\xmlparse.dll"
  File "Crack-Attack\bin\xmltok.dll"
  File "Crack-Attack\bin\zlib1.dll"
  SetOutPath "$INSTDIR\data"
  File "Crack-Attack\data\default_multiplier"
  File "Crack-Attack\data\default_record"
  File "Crack-Attack\data\Makefile.am"
  File "Crack-Attack\data\clock_0.tga"
  File "Crack-Attack\data\clock_1.tga"
  File "Crack-Attack\data\clock_2.tga"
  File "Crack-Attack\data\clock_3.tga"
  File "Crack-Attack\data\clock_4.tga"
  File "Crack-Attack\data\clock_5.tga"
  File "Crack-Attack\data\clock_6.tga"
  File "Crack-Attack\data\clock_7.tga"
  File "Crack-Attack\data\clock_8.tga"
  File "Crack-Attack\data\clock_9.tga"
  File "Crack-Attack\data\clock_extra.tga"
  File "Crack-Attack\data\count_down_1.tga"
  File "Crack-Attack\data\count_down_2.tga"
  File "Crack-Attack\data\count_down_3.tga"
  File "Crack-Attack\data\count_down_go.tga"
  File "Crack-Attack\data\flavor_1.tga"
  File "Crack-Attack\data\flavor_2.tga"
  File "Crack-Attack\data\font0_0.tga"
  File "Crack-Attack\data\font0_1.tga"
  File "Crack-Attack\data\font0_2.tga"
  File "Crack-Attack\data\font0_3.tga"
  File "Crack-Attack\data\font0_4.tga"
  File "Crack-Attack\data\font0_5.tga"
  File "Crack-Attack\data\font0_6.tga"
  File "Crack-Attack\data\font0_7.tga"
  File "Crack-Attack\data\font0_8.tga"
  File "Crack-Attack\data\font0_9.tga"
  File "Crack-Attack\data\font0_a.tga"
  File "Crack-Attack\data\font0_and.tga"
  File "Crack-Attack\data\font0_at.tga"
  File "Crack-Attack\data\font0_b.tga"
  File "Crack-Attack\data\font0_br.tga"
  File "Crack-Attack\data\font0_c.tga"
  File "Crack-Attack\data\font0_ca.tga"
  File "Crack-Attack\data\font0_cb.tga"
  File "Crack-Attack\data\font0_cc.tga"
  File "Crack-Attack\data\font0_cd.tga"
  File "Crack-Attack\data\font0_ce.tga"
  File "Crack-Attack\data\font0_cf.tga"
  File "Crack-Attack\data\font0_cg.tga"
  File "Crack-Attack\data\font0_ch.tga"
  File "Crack-Attack\data\font0_ci.tga"
  File "Crack-Attack\data\font0_cj.tga"
  File "Crack-Attack\data\font0_ck.tga"
  File "Crack-Attack\data\font0_cl.tga"
  File "Crack-Attack\data\font0_cln.tga"
  File "Crack-Attack\data\font0_cm.tga"
  File "Crack-Attack\data\font0_cma.tga"
  File "Crack-Attack\data\font0_cn.tga"
  File "Crack-Attack\data\font0_co.tga"
  File "Crack-Attack\data\font0_cp.tga"
  File "Crack-Attack\data\font0_cq.tga"
  File "Crack-Attack\data\font0_cr.tga"
  File "Crack-Attack\data\font0_cs.tga"
  File "Crack-Attack\data\font0_ct.tga"
  File "Crack-Attack\data\font0_cu.tga"
  File "Crack-Attack\data\font0_cv.tga"
  File "Crack-Attack\data\font0_cw.tga"
  File "Crack-Attack\data\font0_cx.tga"
  File "Crack-Attack\data\font0_cy.tga"
  File "Crack-Attack\data\font0_cz.tga"
  File "Crack-Attack\data\font0_d.tga"
  File "Crack-Attack\data\font0_ds.tga"
  File "Crack-Attack\data\font0_e.tga"
  File "Crack-Attack\data\font0_ep.tga"
  File "Crack-Attack\data\font0_eq.tga"
  File "Crack-Attack\data\font0_f.tga"
  File "Crack-Attack\data\font0_g.tga"
  File "Crack-Attack\data\font0_gt.tga"
  File "Crack-Attack\data\font0_h.tga"
  File "Crack-Attack\data\font0_i.tga"
  File "Crack-Attack\data\font0_j.tga"
  File "Crack-Attack\data\font0_k.tga"
  File "Crack-Attack\data\font0_l.tga"
  File "Crack-Attack\data\font0_lt.tga"
  File "Crack-Attack\data\font0_m.tga"
  File "Crack-Attack\data\font0_mn.tga"
  File "Crack-Attack\data\font0_n.tga"
  File "Crack-Attack\data\font0_o.tga"
  File "Crack-Attack\data\font0_p.tga"
  File "Crack-Attack\data\font0_pd.tga"
  File "Crack-Attack\data\font0_pe.tga"
  File "Crack-Attack\data\font0_pl.tga"
  File "Crack-Attack\data\font0_pr.tga"
  File "Crack-Attack\data\font0_ps.tga"
  File "Crack-Attack\data\font0_pu.tga"
  File "Crack-Attack\data\font0_q.tga"
  File "Crack-Attack\data\font0_qm.tga"
  File "Crack-Attack\data\font0_r.tga"
  File "Crack-Attack\data\font0_s.tga"
  File "Crack-Attack\data\font0_sl.tga"
  File "Crack-Attack\data\font0_t.tga"
  File "Crack-Attack\data\font0_td.tga"
  File "Crack-Attack\data\font0_u.tga"
  File "Crack-Attack\data\font0_v.tga"
  File "Crack-Attack\data\font0_w.tga"
  File "Crack-Attack\data\font0_x.tga"
  File "Crack-Attack\data\font0_y.tga"
  File "Crack-Attack\data\font0_z.tga"
  File "Crack-Attack\data\font0_za.tga"
  File "Crack-Attack\data\font0_zb.tga"
  File "Crack-Attack\data\font0_zc.tga"
  File "Crack-Attack\data\font0_zd.tga"
  File "Crack-Attack\data\garbage_flavor_000.tga"
  File "Crack-Attack\data\garbage_flavor_001.tga"
  File "Crack-Attack\data\garbage_flavor_002.tga"
  File "Crack-Attack\data\garbage_flavor_003.tga"
  File "Crack-Attack\data\garbage_flavor_004.tga"
  File "Crack-Attack\data\garbage_flavor_005.tga"
  File "Crack-Attack\data\garbage_flavor_logo.tga"
  File "Crack-Attack\data\garbage_flavor_logo_x.tga"
  File "Crack-Attack\data\garbage_lightmap_0.tga"
  File "Crack-Attack\data\garbage_lightmap_1.tga"
  File "Crack-Attack\data\garbage_lightmap_2.tga"
  File "Crack-Attack\data\garbage_lightmap_3.tga"
  File "Crack-Attack\data\garbage_lightmap_4.tga"
  File "Crack-Attack\data\garbage_lightmap_5.tga"
  File "Crack-Attack\data\logo.tga"
  File "Crack-Attack\data\logo_x.tga"
  File "Crack-Attack\data\message_anykey.tga"
  File "Crack-Attack\data\message_game_over.tga"
  File "Crack-Attack\data\message_loser.tga"
  File "Crack-Attack\data\message_paused.tga"
  File "Crack-Attack\data\message_waiting.tga"
  File "Crack-Attack\data\message_winner.tga"
  File "Crack-Attack\data\sign_10.tga"
  File "Crack-Attack\data\sign_11.tga"
  File "Crack-Attack\data\sign_12.tga"
  File "Crack-Attack\data\sign_4.tga"
  File "Crack-Attack\data\sign_5.tga"
  File "Crack-Attack\data\sign_6.tga"
  File "Crack-Attack\data\sign_7.tga"
  File "Crack-Attack\data\sign_8.tga"
  File "Crack-Attack\data\sign_9.tga"
  File "Crack-Attack\data\sign_bonus.tga"
  File "Crack-Attack\data\sign_x10.tga"
  File "Crack-Attack\data\sign_x11.tga"
  File "Crack-Attack\data\sign_x12.tga"
  File "Crack-Attack\data\sign_x2.tga"
  File "Crack-Attack\data\sign_x3.tga"
  File "Crack-Attack\data\sign_x4.tga"
  File "Crack-Attack\data\sign_x5.tga"
  File "Crack-Attack\data\sign_x6.tga"
  File "Crack-Attack\data\sign_x7.tga"
  File "Crack-Attack\data\sign_x8.tga"
  File "Crack-Attack\data\sign_x9.tga"
  File "Crack-Attack\data\preview_reduced.tga"
  File "Crack-Attack\data\preview_normal.tga"
  File "Crack-Attack\data\preview_extremely_reduced.tga"
  SetOutPath "$INSTDIR\etc\pango"
  File "Crack-Attack\etc\pango\pango.aliases"
  File "Crack-Attack\etc\pango\pango.modules"
  SetOutPath "$INSTDIR\etc\gtk-2.0"
  File "Crack-Attack\etc\gtk-2.0\gdk-pixbuf.loaders"
  File "Crack-Attack\etc\gtk-2.0\gtk.immodules"
  File "Crack-Attack\etc\gtk-2.0\gtkrc"
  SetOutPath "$INSTDIR\etc\fonts"
  File "Crack-Attack\etc\fonts\fonts.conf"
  File "Crack-Attack\etc\fonts\local.conf"
  SetOutPath "$INSTDIR\include"
  File "Crack-Attack\include\autosprintf.h"
  File "Crack-Attack\include\iconv.h"
  File "Crack-Attack\include\libcharset.h"
  File "Crack-Attack\include\libintl.h"
  File "Crack-Attack\include\localcharset.h"
  SetOutPath "$INSTDIR\lib"
  File "Crack-Attack\lib\libiconv.a"
  File "Crack-Attack\lib\libintl.a"
  File "Crack-Attack\lib\asprintf.lib"
  File "Crack-Attack\lib\charset.lib"
  File "Crack-Attack\lib\iconv.lib"
  File "Crack-Attack\lib\intl.lib"
  SetOutPath "$INSTDIR\lib\pango\1.4.0\modules"
  File "Crack-Attack\lib\pango\1.4.0\modules\pango-arabic-fc.dll"
  File "Crack-Attack\lib\pango\1.4.0\modules\pango-basic-fc.dll"
  File "Crack-Attack\lib\pango\1.4.0\modules\pango-basic-win32.dll"
  File "Crack-Attack\lib\pango\1.4.0\modules\pango-hangul-fc.dll"
  File "Crack-Attack\lib\pango\1.4.0\modules\pango-hebrew-fc.dll"
  File "Crack-Attack\lib\pango\1.4.0\modules\pango-indic-fc.dll"
  File "Crack-Attack\lib\pango\1.4.0\modules\pango-syriac-fc.dll"
  File "Crack-Attack\lib\pango\1.4.0\modules\pango-thai-fc.dll"
  File "Crack-Attack\lib\pango\1.4.0\modules\pango-tibetan-fc.dll"
  SetOutPath "$INSTDIR\lib\locale\en_GB\LC_MESSAGES"
  File "Crack-Attack\lib\locale\en_GB\LC_MESSAGES\atk10.mo"
  File "Crack-Attack\lib\locale\en_GB\LC_MESSAGES\glib20.mo"
  File "Crack-Attack\lib\locale\en_GB\LC_MESSAGES\gtk20.mo"
  SetOutPath "$INSTDIR\lib\locale\en_CA\LC_MESSAGES"
  File "Crack-Attack\lib\locale\en_CA\LC_MESSAGES\atk10.mo"
  File "Crack-Attack\lib\locale\en_CA\LC_MESSAGES\glib20.mo"
  File "Crack-Attack\lib\locale\en_CA\LC_MESSAGES\gtk20.mo"
  SetOutPath "$INSTDIR\lib\locale\en@IPA\LC_MESSAGES"
  File "Crack-Attack\lib\locale\en@IPA\LC_MESSAGES\gtk20.mo"
  SetOutPath "$INSTDIR\lib\gtk-2.0\2.4.0\loaders"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-ani.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-bmp.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-gif.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-ico.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-jpeg.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-pcx.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-png.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-pnm.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-ras.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-tga.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-tiff.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-wbmp.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-xbm.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-xpm.dll"
  SetOutPath "$INSTDIR\lib\gtk-2.0\2.4.0\immodules"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\immodules\im-am-et.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\immodules\im-cedilla.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\immodules\im-cyrillic-translit.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\immodules\im-ime.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\immodules\im-inuktitut.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\immodules\im-ipa.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\immodules\im-thai-broken.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\immodules\im-ti-er.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\immodules\im-ti-et.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\immodules\im-viqr.dll"
  SetOutPath "$INSTDIR\lib\gtk-2.0\2.4.0\engines"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\engines\libbluecurve.dll"
  File "Crack-Attack\lib\gtk-2.0\2.4.0\engines\libwimp.dll"
  SetOutPath "$INSTDIR\localdata"
  File "Crack-Attack\localdata\garbage_flavor_000.tga"
  File "Crack-Attack\localdata\garbage_flavor_001.tga"
  File "Crack-Attack\localdata\garbage_flavor_002.tga"
  File "Crack-Attack\localdata\garbage_flavor_003.tga"
  File "Crack-Attack\localdata\garbage_flavor_004.tga"
  File "Crack-Attack\localdata\garbage_flavor_005.tga"
  SetOutPath "$INSTDIR\share\themes\Default\gtk-2.0-key"
  File "Crack-Attack\share\themes\Default\gtk-2.0-key\gtkrc"
  SetOutPath "$INSTDIR\share\themes\Default\gtk-2.0"
  File "Crack-Attack\share\themes\Default\gtk-2.0\gtkrc.old"
  File "Crack-Attack\share\themes\Default\gtk-2.0\gtkrc.bluecurve"
  File "Crack-Attack\share\themes\Default\gtk-2.0\gtkrc"
  SetOutPath "$INSTDIR\share\themes\Emacs\gtk-2.0-key"
  File "Crack-Attack\share\themes\Emacs\gtk-2.0-key\gtkrc"
  SetOutPath "$INSTDIR\share\man\man3"
  File "Crack-Attack\share\man\man3\bind_textdomain_codeset.3"
  File "Crack-Attack\share\man\man3\bindtextdomain.3"
  File "Crack-Attack\share\man\man3\dcgettext.3"
  File "Crack-Attack\share\man\man3\dcngettext.3"
  File "Crack-Attack\share\man\man3\dgettext.3"
  File "Crack-Attack\share\man\man3\dngettext.3"
  File "Crack-Attack\share\man\man3\gettext.3"
  File "Crack-Attack\share\man\man3\iconv.3"
  File "Crack-Attack\share\man\man3\iconv_close.3"
  File "Crack-Attack\share\man\man3\iconv_open.3"
  File "Crack-Attack\share\man\man3\ngettext.3"
  File "Crack-Attack\share\man\man3\textdomain.3"
  SetOutPath "$INSTDIR\share\man\man1"
  File "Crack-Attack\share\man\man1\envsubst.1"
  File "Crack-Attack\share\man\man1\gettext.1"
  File "Crack-Attack\share\man\man1\iconv.1"
  File "Crack-Attack\share\man\man1\ngettext.1"
  SetOutPath "$INSTDIR\share\locale\en@quot\LC_MESSAGES"
  File "Crack-Attack\share\locale\en@quot\LC_MESSAGES\gettext-runtime.mo"
  SetOutPath "$INSTDIR\share\locale\en@boldquot\LC_MESSAGES"
  File "Crack-Attack\share\locale\en@boldquot\LC_MESSAGES\gettext-runtime.mo"

; Shortcuts
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  CreateDirectory "$SMPROGRAMS\$ICONS_GROUP"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Crack-Attack!.lnk" "$INSTDIR\bin\crack-attack-gui.exe"
  CreateShortCut "$DESKTOP\Crack-Attack!.lnk" "$INSTDIR\bin\crack-attack-gui.exe"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk" "$INSTDIR\uninst.exe"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\bin\crack-attack.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\bin\crack-attack.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  !insertmacro MUI_STARTMENU_GETFOLDER "Application" $ICONS_GROUP
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\share\locale\en@boldquot\LC_MESSAGES\gettext-runtime.mo"
  Delete "$INSTDIR\share\locale\en@quot\LC_MESSAGES\gettext-runtime.mo"
  Delete "$INSTDIR\share\man\man1\ngettext.1"
  Delete "$INSTDIR\share\man\man1\iconv.1"
  Delete "$INSTDIR\share\man\man1\gettext.1"
  Delete "$INSTDIR\share\man\man1\envsubst.1"
  Delete "$INSTDIR\share\man\man3\textdomain.3"
  Delete "$INSTDIR\share\man\man3\ngettext.3"
  Delete "$INSTDIR\share\man\man3\iconv_open.3"
  Delete "$INSTDIR\share\man\man3\iconv_close.3"
  Delete "$INSTDIR\share\man\man3\iconv.3"
  Delete "$INSTDIR\share\man\man3\gettext.3"
  Delete "$INSTDIR\share\man\man3\dngettext.3"
  Delete "$INSTDIR\share\man\man3\dgettext.3"
  Delete "$INSTDIR\share\man\man3\dcngettext.3"
  Delete "$INSTDIR\share\man\man3\dcgettext.3"
  Delete "$INSTDIR\share\man\man3\bindtextdomain.3"
  Delete "$INSTDIR\share\man\man3\bind_textdomain_codeset.3"
  Delete "$INSTDIR\share\themes\Emacs\gtk-2.0-key\gtkrc"
  Delete "$INSTDIR\share\themes\Default\gtk-2.0\gtkrc"
  Delete "$INSTDIR\share\themes\Default\gtk-2.0\gtkrc.bluecurve"
  Delete "$INSTDIR\share\themes\Default\gtk-2.0\gtkrc.old"
  Delete "$INSTDIR\share\themes\Default\gtk-2.0-key\gtkrc"
  Delete "$INSTDIR\localdata\garbage_flavor_005.tga"
  Delete "$INSTDIR\localdata\garbage_flavor_004.tga"
  Delete "$INSTDIR\localdata\garbage_flavor_003.tga"
  Delete "$INSTDIR\localdata\garbage_flavor_002.tga"
  Delete "$INSTDIR\localdata\garbage_flavor_001.tga"
  Delete "$INSTDIR\localdata\garbage_flavor_000.tga"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\engines\libwimp.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\engines\libbluecurve.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\immodules\im-viqr.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\immodules\im-ti-et.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\immodules\im-ti-er.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\immodules\im-thai-broken.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\immodules\im-ipa.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\immodules\im-inuktitut.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\immodules\im-ime.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\immodules\im-cyrillic-translit.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\immodules\im-cedilla.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\immodules\im-am-et.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-xpm.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-xbm.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-wbmp.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-tiff.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-tga.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-ras.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-pnm.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-png.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-pcx.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-jpeg.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-ico.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-gif.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-bmp.dll"
  Delete "$INSTDIR\lib\gtk-2.0\2.4.0\loaders\libpixbufloader-ani.dll"
  Delete "$INSTDIR\lib\locale\en@IPA\LC_MESSAGES\gtk20.mo"
  Delete "$INSTDIR\lib\locale\en_CA\LC_MESSAGES\gtk20.mo"
  Delete "$INSTDIR\lib\locale\en_CA\LC_MESSAGES\glib20.mo"
  Delete "$INSTDIR\lib\locale\en_CA\LC_MESSAGES\atk10.mo"
  Delete "$INSTDIR\lib\locale\en_GB\LC_MESSAGES\gtk20.mo"
  Delete "$INSTDIR\lib\locale\en_GB\LC_MESSAGES\glib20.mo"
  Delete "$INSTDIR\lib\locale\en_GB\LC_MESSAGES\atk10.mo"
  Delete "$INSTDIR\lib\pango\1.4.0\modules\pango-tibetan-fc.dll"
  Delete "$INSTDIR\lib\pango\1.4.0\modules\pango-thai-fc.dll"
  Delete "$INSTDIR\lib\pango\1.4.0\modules\pango-syriac-fc.dll"
  Delete "$INSTDIR\lib\pango\1.4.0\modules\pango-indic-fc.dll"
  Delete "$INSTDIR\lib\pango\1.4.0\modules\pango-hebrew-fc.dll"
  Delete "$INSTDIR\lib\pango\1.4.0\modules\pango-hangul-fc.dll"
  Delete "$INSTDIR\lib\pango\1.4.0\modules\pango-basic-win32.dll"
  Delete "$INSTDIR\lib\pango\1.4.0\modules\pango-basic-fc.dll"
  Delete "$INSTDIR\lib\pango\1.4.0\modules\pango-arabic-fc.dll"
  Delete "$INSTDIR\lib\intl.lib"
  Delete "$INSTDIR\lib\iconv.lib"
  Delete "$INSTDIR\lib\charset.lib"
  Delete "$INSTDIR\lib\asprintf.lib"
  Delete "$INSTDIR\lib\libintl.a"
  Delete "$INSTDIR\lib\libiconv.a"
  Delete "$INSTDIR\include\localcharset.h"
  Delete "$INSTDIR\include\libintl.h"
  Delete "$INSTDIR\include\libcharset.h"
  Delete "$INSTDIR\include\iconv.h"
  Delete "$INSTDIR\include\autosprintf.h"
  Delete "$INSTDIR\etc\fonts\local.conf"
  Delete "$INSTDIR\etc\fonts\fonts.conf"
  Delete "$INSTDIR\etc\gtk-2.0\gtkrc"
  Delete "$INSTDIR\etc\gtk-2.0\gtk.immodules"
  Delete "$INSTDIR\etc\gtk-2.0\gdk-pixbuf.loaders"
  Delete "$INSTDIR\etc\pango\pango.modules"
  Delete "$INSTDIR\etc\pango\pango.aliases"
  Delete "$INSTDIR\data\preview_extremely_reduced.tga"
  Delete "$INSTDIR\data\preview_normal.tga"
  Delete "$INSTDIR\data\preview_reduced.tga"
  Delete "$INSTDIR\data\sign_x9.tga"
  Delete "$INSTDIR\data\sign_x8.tga"
  Delete "$INSTDIR\data\sign_x7.tga"
  Delete "$INSTDIR\data\sign_x6.tga"
  Delete "$INSTDIR\data\sign_x5.tga"
  Delete "$INSTDIR\data\sign_x4.tga"
  Delete "$INSTDIR\data\sign_x3.tga"
  Delete "$INSTDIR\data\sign_x2.tga"
  Delete "$INSTDIR\data\sign_x12.tga"
  Delete "$INSTDIR\data\sign_x11.tga"
  Delete "$INSTDIR\data\sign_x10.tga"
  Delete "$INSTDIR\data\sign_bonus.tga"
  Delete "$INSTDIR\data\sign_9.tga"
  Delete "$INSTDIR\data\sign_8.tga"
  Delete "$INSTDIR\data\sign_7.tga"
  Delete "$INSTDIR\data\sign_6.tga"
  Delete "$INSTDIR\data\sign_5.tga"
  Delete "$INSTDIR\data\sign_4.tga"
  Delete "$INSTDIR\data\sign_12.tga"
  Delete "$INSTDIR\data\sign_11.tga"
  Delete "$INSTDIR\data\sign_10.tga"
  Delete "$INSTDIR\data\message_winner.tga"
  Delete "$INSTDIR\data\message_waiting.tga"
  Delete "$INSTDIR\data\message_paused.tga"
  Delete "$INSTDIR\data\message_loser.tga"
  Delete "$INSTDIR\data\message_game_over.tga"
  Delete "$INSTDIR\data\message_anykey.tga"
  Delete "$INSTDIR\data\logo_x.tga"
  Delete "$INSTDIR\data\logo.tga"
  Delete "$INSTDIR\data\garbage_lightmap_5.tga"
  Delete "$INSTDIR\data\garbage_lightmap_4.tga"
  Delete "$INSTDIR\data\garbage_lightmap_3.tga"
  Delete "$INSTDIR\data\garbage_lightmap_2.tga"
  Delete "$INSTDIR\data\garbage_lightmap_1.tga"
  Delete "$INSTDIR\data\garbage_lightmap_0.tga"
  Delete "$INSTDIR\data\garbage_flavor_logo_x.tga"
  Delete "$INSTDIR\data\garbage_flavor_logo.tga"
  Delete "$INSTDIR\data\garbage_flavor_005.tga"
  Delete "$INSTDIR\data\garbage_flavor_004.tga"
  Delete "$INSTDIR\data\garbage_flavor_003.tga"
  Delete "$INSTDIR\data\garbage_flavor_002.tga"
  Delete "$INSTDIR\data\garbage_flavor_001.tga"
  Delete "$INSTDIR\data\garbage_flavor_000.tga"
  Delete "$INSTDIR\data\font0_zd.tga"
  Delete "$INSTDIR\data\font0_zc.tga"
  Delete "$INSTDIR\data\font0_zb.tga"
  Delete "$INSTDIR\data\font0_za.tga"
  Delete "$INSTDIR\data\font0_z.tga"
  Delete "$INSTDIR\data\font0_y.tga"
  Delete "$INSTDIR\data\font0_x.tga"
  Delete "$INSTDIR\data\font0_w.tga"
  Delete "$INSTDIR\data\font0_v.tga"
  Delete "$INSTDIR\data\font0_u.tga"
  Delete "$INSTDIR\data\font0_td.tga"
  Delete "$INSTDIR\data\font0_t.tga"
  Delete "$INSTDIR\data\font0_sl.tga"
  Delete "$INSTDIR\data\font0_s.tga"
  Delete "$INSTDIR\data\font0_r.tga"
  Delete "$INSTDIR\data\font0_qm.tga"
  Delete "$INSTDIR\data\font0_q.tga"
  Delete "$INSTDIR\data\font0_pu.tga"
  Delete "$INSTDIR\data\font0_ps.tga"
  Delete "$INSTDIR\data\font0_pr.tga"
  Delete "$INSTDIR\data\font0_pl.tga"
  Delete "$INSTDIR\data\font0_pe.tga"
  Delete "$INSTDIR\data\font0_pd.tga"
  Delete "$INSTDIR\data\font0_p.tga"
  Delete "$INSTDIR\data\font0_o.tga"
  Delete "$INSTDIR\data\font0_n.tga"
  Delete "$INSTDIR\data\font0_mn.tga"
  Delete "$INSTDIR\data\font0_m.tga"
  Delete "$INSTDIR\data\font0_lt.tga"
  Delete "$INSTDIR\data\font0_l.tga"
  Delete "$INSTDIR\data\font0_k.tga"
  Delete "$INSTDIR\data\font0_j.tga"
  Delete "$INSTDIR\data\font0_i.tga"
  Delete "$INSTDIR\data\font0_h.tga"
  Delete "$INSTDIR\data\font0_gt.tga"
  Delete "$INSTDIR\data\font0_g.tga"
  Delete "$INSTDIR\data\font0_f.tga"
  Delete "$INSTDIR\data\font0_eq.tga"
  Delete "$INSTDIR\data\font0_ep.tga"
  Delete "$INSTDIR\data\font0_e.tga"
  Delete "$INSTDIR\data\font0_ds.tga"
  Delete "$INSTDIR\data\font0_d.tga"
  Delete "$INSTDIR\data\font0_cz.tga"
  Delete "$INSTDIR\data\font0_cy.tga"
  Delete "$INSTDIR\data\font0_cx.tga"
  Delete "$INSTDIR\data\font0_cw.tga"
  Delete "$INSTDIR\data\font0_cv.tga"
  Delete "$INSTDIR\data\font0_cu.tga"
  Delete "$INSTDIR\data\font0_ct.tga"
  Delete "$INSTDIR\data\font0_cs.tga"
  Delete "$INSTDIR\data\font0_cr.tga"
  Delete "$INSTDIR\data\font0_cq.tga"
  Delete "$INSTDIR\data\font0_cp.tga"
  Delete "$INSTDIR\data\font0_co.tga"
  Delete "$INSTDIR\data\font0_cn.tga"
  Delete "$INSTDIR\data\font0_cma.tga"
  Delete "$INSTDIR\data\font0_cm.tga"
  Delete "$INSTDIR\data\font0_cln.tga"
  Delete "$INSTDIR\data\font0_cl.tga"
  Delete "$INSTDIR\data\font0_ck.tga"
  Delete "$INSTDIR\data\font0_cj.tga"
  Delete "$INSTDIR\data\font0_ci.tga"
  Delete "$INSTDIR\data\font0_ch.tga"
  Delete "$INSTDIR\data\font0_cg.tga"
  Delete "$INSTDIR\data\font0_cf.tga"
  Delete "$INSTDIR\data\font0_ce.tga"
  Delete "$INSTDIR\data\font0_cd.tga"
  Delete "$INSTDIR\data\font0_cc.tga"
  Delete "$INSTDIR\data\font0_cb.tga"
  Delete "$INSTDIR\data\font0_ca.tga"
  Delete "$INSTDIR\data\font0_c.tga"
  Delete "$INSTDIR\data\font0_br.tga"
  Delete "$INSTDIR\data\font0_b.tga"
  Delete "$INSTDIR\data\font0_at.tga"
  Delete "$INSTDIR\data\font0_and.tga"
  Delete "$INSTDIR\data\font0_a.tga"
  Delete "$INSTDIR\data\font0_9.tga"
  Delete "$INSTDIR\data\font0_8.tga"
  Delete "$INSTDIR\data\font0_7.tga"
  Delete "$INSTDIR\data\font0_6.tga"
  Delete "$INSTDIR\data\font0_5.tga"
  Delete "$INSTDIR\data\font0_4.tga"
  Delete "$INSTDIR\data\font0_3.tga"
  Delete "$INSTDIR\data\font0_2.tga"
  Delete "$INSTDIR\data\font0_1.tga"
  Delete "$INSTDIR\data\font0_0.tga"
  Delete "$INSTDIR\data\flavor_2.tga"
  Delete "$INSTDIR\data\flavor_1.tga"
  Delete "$INSTDIR\data\count_down_go.tga"
  Delete "$INSTDIR\data\count_down_3.tga"
  Delete "$INSTDIR\data\count_down_2.tga"
  Delete "$INSTDIR\data\count_down_1.tga"
  Delete "$INSTDIR\data\clock_extra.tga"
  Delete "$INSTDIR\data\clock_9.tga"
  Delete "$INSTDIR\data\clock_8.tga"
  Delete "$INSTDIR\data\clock_7.tga"
  Delete "$INSTDIR\data\clock_6.tga"
  Delete "$INSTDIR\data\clock_5.tga"
  Delete "$INSTDIR\data\clock_4.tga"
  Delete "$INSTDIR\data\clock_3.tga"
  Delete "$INSTDIR\data\clock_2.tga"
  Delete "$INSTDIR\data\clock_1.tga"
  Delete "$INSTDIR\data\clock_0.tga"
  Delete "$INSTDIR\data\Makefile.am"
  Delete "$INSTDIR\data\default_record"
  Delete "$INSTDIR\data\default_multiplier"
  Delete "$INSTDIR\bin\zlib1.dll"
  Delete "$INSTDIR\bin\xmltok.dll"
  Delete "$INSTDIR\bin\xmlparse.dll"
  Delete "$INSTDIR\bin\pango-querymodules.exe"
  Delete "$INSTDIR\bin\libtiff3.dll"
  Delete "$INSTDIR\bin\libpng13.dll"
  Delete "$INSTDIR\bin\libpng12.dll"
  Delete "$INSTDIR\bin\libpangowin32-1.0-0.dll"
  Delete "$INSTDIR\bin\libpangoft2-1.0-0.dll"
  Delete "$INSTDIR\bin\libpango-1.0-0.dll"
  Delete "$INSTDIR\bin\libgtk-win32-2.0-0.dll"
  Delete "$INSTDIR\bin\libgthread-2.0-0.dll"
  Delete "$INSTDIR\bin\libgobject-2.0-0.dll"
  Delete "$INSTDIR\bin\libgmodule-2.0-0.dll"
  Delete "$INSTDIR\bin\libglib-2.0-0.dll"
  Delete "$INSTDIR\bin\libgdk_pixbuf-2.0-0.dll"
  Delete "$INSTDIR\bin\libgdk-win32-2.0-0.dll"
  Delete "$INSTDIR\bin\libfontconfig-1.dll"
  Delete "$INSTDIR\bin\libexpat-0.dll"
  Delete "$INSTDIR\bin\libatk-1.0-0.dll"
  Delete "$INSTDIR\bin\jpeg62.dll"
  Delete "$INSTDIR\bin\intl.dll"
  Delete "$INSTDIR\bin\iconv.dll"
  Delete "$INSTDIR\bin\gspawn-win32-helper.exe"
  Delete "$INSTDIR\bin\freetype6.dll"
  Delete "$INSTDIR\bin\charset.dll"
  Delete "$INSTDIR\bin\asprintf.dll"
  Delete "$INSTDIR\bin\ngettext.exe"
  Delete "$INSTDIR\bin\iconv.exe"
  Delete "$INSTDIR\bin\gettext.exe"
  Delete "$INSTDIR\bin\envsubst.exe"
  Delete "$INSTDIR\bin\crack-attack-gui.exe"
  Delete "$INSTDIR\bin\crack-attack.exe"
  Delete "$INSTDIR\bin\gettext.sh"
  Delete "$INSTDIR\COPYING.txt"
  Delete "$INSTDIR\README.txt"
  Delete "$INSTDIR\README.libiconv"
  Delete "$INSTDIR\COPYING.LIB-2"

  Delete "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\Website.lnk"
  Delete "$DESKTOP\Crack-Attack!.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\Crack-Attack!.lnk"

  RMDir "$SMPROGRAMS\$ICONS_GROUP"
  RMDir "$INSTDIR\share\themes\Emacs\gtk-2.0-key"
  RMDir "$INSTDIR\share\themes\Default\gtk-2.0-key"
  RMDir "$INSTDIR\share\themes\Default\gtk-2.0"
  RMDir "$INSTDIR\share\man\man3"
  RMDir "$INSTDIR\share\man\man1"
  RMDir "$INSTDIR\share\locale\en@quot\LC_MESSAGES"
  RMDir "$INSTDIR\share\locale\en@boldquot\LC_MESSAGES"
  RMDir "$INSTDIR\localdata"
  RMDir "$INSTDIR\lib\pango\1.4.0\modules"
  RMDir "$INSTDIR\lib\locale\en_GB\LC_MESSAGES"
  RMDir "$INSTDIR\lib\locale\en_CA\LC_MESSAGES"
  RMDir "$INSTDIR\lib\locale\en@IPA\LC_MESSAGES"
  RMDir "$INSTDIR\lib\gtk-2.0\2.4.0\loaders"
  RMDir "$INSTDIR\lib\gtk-2.0\2.4.0\immodules"
  RMDir "$INSTDIR\lib\gtk-2.0\2.4.0\engines"
  RMDir "$INSTDIR\lib"
  RMDir "$INSTDIR\include"
  RMDir "$INSTDIR\etc\pango"
  RMDir "$INSTDIR\etc\gtk-2.0"
  RMDir "$INSTDIR\etc\fonts"
  RMDir "$INSTDIR\data"
  RMDir "$INSTDIR\bin"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd
