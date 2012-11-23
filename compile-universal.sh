# make fat (universal) libs
lipo -output ./build/libavcodec.a  -create \
-arch armv7 ./build/armv7/libavcodec.a \
-arch i386 ./build/i386/libavcodec.a

lipo -output ./build/libavdevice.a  -create \
-arch armv7 ./build/armv7/libavdevice.a \
-arch i386 ./build/i386/libavdevice.a

lipo -output ./build/libavfilter.a  -create \
-arch armv7 ./build/armv7/libavfilter.a \
-arch i386 ./build/i386/libavfilter.a

lipo -output ./build/libavformat.a  -create \
-arch armv7 ./build/armv7/libavformat.a \
-arch i386 ./build/i386/libavformat.a

lipo -output ./build/libavutil.a  -create \
-arch armv7 ./build/armv7/libavutil.a \
-arch i386 ./build/i386/libavutil.a

lipo -output ./build/libswscale.a  -create \
-arch armv7 ./build/armv7/libswscale.a \
-arch i386 ./build/i386/libswscale.a


