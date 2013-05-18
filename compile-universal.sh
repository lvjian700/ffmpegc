# make fat (universal) libs
xcrun -sdk iphoneos lipo -output ./build/libavcodec.a  \
	-create \
		-arch armv7s ./build/armv7s/libavcodec.a \
		-arch armv7 ./build/armv7/libavcodec.a \
		-arch i386 ./build/i386/libavcodec.a

xcrun -sdk iphoneos lipo -output ./build/libavdevice.a  \
	-create \
		-arch armv7s ./build/armv7s/libavdevice.a \
		-arch armv7 ./build/armv7/libavdevice.a \
		-arch i386 ./build/i386/libavdevice.a

xcrun -sdk iphoneos lipo -output ./build/libavfilter.a  \
	-create \
		-arch armv7s ./build/armv7s/libavfilter.a \
		-arch armv7 ./build/armv7/libavfilter.a \
		-arch i386 ./build/i386/libavfilter.a

xcrun -sdk iphoneos lipo -output ./build/libavformat.a  \
	-create \
		-arch armv7s ./build/armv7s/libavformat.a \
		-arch armv7 ./build/armv7/libavformat.a \
		-arch i386 ./build/i386/libavformat.a

xcrun -sdk iphoneos lipo -output ./build/libavutil.a  \
	-create \
		-arch armv7s ./build/armv7s/libavutil.a \
		-arch armv7 ./build/armv7/libavutil.a \
		-arch i386 ./build/i386/libavutil.a

xcrun -sdk iphoneos lipo -output ./build/libswscale.a  \
	-create \
		-arch armv7s ./build/armv7s/libswscale.a \
		-arch armv7 ./build/armv7/libswscale.a \
		-arch i386 ./build/i386/libswscale.a


