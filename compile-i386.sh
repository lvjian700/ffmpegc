make clean
SDKVERSION="6.1"
./configure \
	--cc=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin/gcc \
	--as='gas-preprocessor.pl /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin/gcc' \
	--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator${SDKVERSION}.sdk \
	--extra-ldflags=-L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator${SDKVERSION}.sdk/usr/lib/system \
	--target-os=darwin \
	--arch=i386 \
	--cpu=i386 \
	--extra-cflags='-arch i386' \
	--extra-ldflags='-arch i386' \
	--enable-pic \
	--enable-cross-compile \
	--disable-ffmpeg  \
	--disable-ffplay \
	--disable-ffserver \
	--disable-encoders \
	--disable-decoders \
	--disable-demuxers \
	--disable-muxers \
	--enable-demuxer=flv \
	--enable-demuxer=mov \
	--enable-muxer=flv \
	--enable-muxer=mov \
	--enable-decoder=mp3 \
	--enable-decoder=aac \
	--disable-doc


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



