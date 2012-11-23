echo "install gas-* perl script"
./install-gas.sh

echo "download ffmpeg"
git clone git://source.ffmpeg.org/ffmpeg.git ffmpeg

echo "copy install shell script to ffmpeg"
cp ./compile-*.sh ffmpeg/
cd ffmpeg

./compile-armv7.sh
./compile-i386.sh
./compile-universal.sh



