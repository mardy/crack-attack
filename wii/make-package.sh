#! /bin/sh

set -e

NAME=crack-attack
TMPDIR="$(mktemp -d)"
OUTDIR="$TMPDIR/$NAME"

mkdir -p "$OUTDIR"
cp -a data/*.png \
    data/*.tga \
    data/models/*.obj \
    data/models/*.mtl \
    wii/meta.xml \
    wii/icon.png \
    "$OUTDIR"
elf2dol "src/$NAME.elf" "$OUTDIR/boot.dol"

cd $TMPDIR
zip -r "$NAME.zip" "$NAME"
cd -
mv "$TMPDIR/$NAME.zip" .
rm -rf "$TMPDIR"
