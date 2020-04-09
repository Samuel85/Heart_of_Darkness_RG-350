#!/bin/sh

OPK_NAME=Heart.opk

echo ${OPK_NAME}

# create default.gcw0.desktop
cat > default.gcw0.desktop <<EOF
[Desktop Entry]
Name=Heart of Darkness
Comment=invaders for the RG350
Exec=hode
Terminal=false
Type=games
StartupNotify=true
Icon=HDarkness
Categories=games
X-OD-NeedsDownscaling=true
EOF

# create opk
FLIST="*"
FLIST="${FLIST} default.gcw0.desktop"


rm -f ${OPK_NAME}
mksquashfs ${FLIST} ${OPK_NAME} -all-root -no-xattrs -noappend -no-exports

cat default.gcw0.desktop
rm -f default.gcw0.desktop
