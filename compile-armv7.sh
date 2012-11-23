./configure --cc=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc --as='gas-preprocessor.pl /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc' --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.0.sdk --extra-ldflags=-L/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.0.sdk/usr/lib/system --target-os=darwin --arch=arm --cpu=cortex-a8 --extra-cflags='-arch armv7' --extra-ldflags='-arch armv7' --enable-pic --enable-cross-compile --disable-ffmpeg  --disable-ffplay --disable-ffserver --disable-doc



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

