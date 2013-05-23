SRCDIR=`pwd`
VERSION="1.2.1"

echo "install gas-* perl script"
./install-gas.sh

echo "download ffmpeg"
set -e
if [ ! -e ffmpeg-${VERSION}.tar.bz2 ]; then
	echo "Downloading ffmpeg-${VERSION}.tar.bz2"
    curl -O  http://ffmpeg.org/releases/ffmpeg-${VERSION}.tar.bz2
else
	echo "Using ffmpeg-${VERSION}.tar.bz2"
fi

tar jxvf ffmpeg-${VERSION}.tar.bz2


echo "copy install shell script to ffmpeg"
cp ./compile-*.sh "ffmpeg-${VERSION}"
cd "ffmpeg-${VERSION}"

if [ -d x264 ]
    then
        (cd $SRCDIR/ffmpeg-${VERSION}/x264; git pull)
    else
        git clone git://git.videolan.org/x264.git x264
fi

echo "compile armv7s ..."
./compile-armv7s.sh

echo "compile armv7 ..."
./compile-armv7.sh

echo "compile i386 for Simulator ..."
./compile-i386.sh

echo "packaging universal version ..."
./compile-universal.sh



