SRCDIR=`pwd`
SDKVERSION="6.1"

cd $SRCDIR/x264

echo "compile x264 i386 ..."

make clean

CC=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin/gcc \
    ./configure \
        --host=i386-apple-darwin \
        --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator${SDKVERSION}.sdk \
        --prefix=build/i386 \
        --extra-cflags='-arch i386' \
        --extra-ldflags="-L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator${SDKVERSION}.sdk/usr/lib/system -arch i386" \
        --enable-pic --disable-shared --enable-static --disable-asm

make && make install

cd $SRCDIR

echo "compile ffmpeg i386 ..."

make clean

./configure \
	--cc=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin/gcc \
	--as='gas-preprocessor.pl /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin/gcc' \
	--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator${SDKVERSION}.sdk \
	--extra-ldflags=-L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator${SDKVERSION}.sdk/usr/lib/system \
	--target-os=darwin \
	--arch=i386 \
	--cpu=i386 \
    --extra-cflags='-I./x264/build/i386/include -arch i386' \
    --extra-ldflags='-L./x264/build/i386/lib -arch i386' \
	--enable-pic \
	--enable-cross-compile \
    --enable-gpl \
    --enable-libx264 \
	--disable-ffmpeg  \
	--disable-ffplay \
	--disable-ffserver \
	--disable-doc \
	--disable-asm


# build for i386
make clean
make

# copy out the i386 libs
mkdir -p ./build/i386

cp -f ./libavcodec/libavcodec.a ./build/i386/libavcodec.a
cp -f ./libavdevice/libavdevice.a ./build/i386/libavdevice.a
cp -f ./libavfilter/libavfilter.a ./build/i386/libavfilter.a
cp -f ./libavformat/libavformat.a ./build/i386/libavformat.a
cp -f ./libavutil/libavutil.a ./build/i386/libavutil.a
cp -f ./libswscale/libswscale.a ./build/i386/libswscale.a



