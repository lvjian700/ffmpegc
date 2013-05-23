SRCDIR=`pwd`
SDKVERSION="6.1"

cd $SRCDIR/x264

make clean

CC=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc \
    ./configure \
        --host=arm-apple-darwin \
        --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS${SDKVERSION}.sdk \
        --prefix=build/armv7 \
        --extra-cflags='-arch armv7' \
        --extra-ldflags="-L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS${SDKVERSION}.sdk/usr/lib/system -arch armv7" \
        --enable-pic --disable-shared --enable-static

make && make install

cd $SRCDIR

make clean

./configure \
	--cc=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc \
	--as='gas-preprocessor.pl /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc' \
	--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS${SDKVERSION}.sdk \
	--extra-ldflags=-L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS${SDKVERSION}.sdk/usr/lib/system \
	--target-os=darwin \
	--arch=arm \
	--cpu=cortex-a8 \
    --extra-cflags='-I./x264/build/armv7/include -arch armv7' \
    --extra-ldflags='-L./x264/build/armv7/lib -arch armv7' \
	--enable-pic \
	--enable-cross-compile \
    --enable-gpl \
    --enable-libx264 \
	--disable-ffmpeg  \
	--disable-ffplay \
	--disable-ffserver \
	--disable-doc
		



# build for armv7
make clean
make

# copy out the armv7 libs
mkdir -p ./build/armv7
cp -f ./libavcodec/libavcodec.a ./build/armv7/libavcodec.a
cp -f ./libavdevice/libavdevice.a ./build/armv7/libavdevice.a
cp -f ./libavfilter/libavfilter.a ./build/armv7/libavfilter.a
cp -f ./libavformat/libavformat.a ./build/armv7/libavformat.a
cp -f ./libavutil/libavutil.a ./build/armv7/libavutil.a
cp -f ./libswscale/libswscale.a ./build/armv7/libswscale.a

