SRCDIR=`pwd`
SDKVERSION="6.1"

cd $SRCDIR/x264

make clean

CC=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc \
    ./configure \
        --host=arm-apple-darwin \
        --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS${SDKVERSION}.sdk \
        --prefix=build/armv7s \
        --extra-cflags='-arch armv7s' \
        --extra-ldflags="-L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS${SDKVERSION}.sdk/usr/lib/system -arch armv7s" \
        --enable-pic --disable-shared --enable-static

make && make install

cd $SRCDIR

make clean

./configure \
	--prefix=armv7s \
	--cc=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc \
	--as='gas-preprocessor.pl /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc' \
	--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS${SDKVERSION}.sdk \
	--extra-ldflags=-L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS${SDKVERSION}.sdk/usr/lib/system \
	--target-os=darwin \
	--arch=arm \
	--cpu=cortex-a9 \
    --extra-cflags='-I./x264/build/armv7s/include -arch armv7s' \
    --extra-ldflags='-L./x264/build/armv7s/lib -arch armv7s' \
	--enable-pic \
	--enable-cross-compile \
    --enable-gpl \
    --enable-libx264 \
	--disable-ffmpeg  \
	--disable-ffplay \
	--disable-ffserver \
	--disable-doc
		



# build for armv7s
make clean
make

# copy out the armv7s libs
mkdir -p ./build/armv7s
cp -f ./libavcodec/libavcodec.a ./build/armv7s/libavcodec.a
cp -f ./libavdevice/libavdevice.a ./build/armv7s/libavdevice.a
cp -f ./libavfilter/libavfilter.a ./build/armv7s/libavfilter.a
cp -f ./libavformat/libavformat.a ./build/armv7s/libavformat.a
cp -f ./libavutil/libavutil.a ./build/armv7s/libavutil.a
cp -f ./libswscale/libswscale.a ./build/armv7s/libswscale.a

