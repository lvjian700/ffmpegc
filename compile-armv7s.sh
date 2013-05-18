make clean
SDKVERSION="6.1"
./configure \
	--prefix=armv7s \
	--cc=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc \
	--as='gas-preprocessor.pl /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc' \
	--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS${SDKVERSION}.sdk \
	--extra-ldflags=-L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS${SDKVERSION}.sdk/usr/lib/system \
	--target-os=darwin \
	--arch=arm \
	--cpu=cortex-a9 \
	--extra-cflags='-arch armv7s' \
	--extra-ldflags='-arch armv7s' \
	--enable-pic \
	--enable-cross-compile \
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

