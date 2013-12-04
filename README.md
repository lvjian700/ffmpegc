Compile ffmpeg for iOS, support armv7s , armvs7 & i386 simulator. 

* iOS 7 version not support x.264 module
* iOS 6 version support x.264 module

##iOS 7 Release Note

* support iOS 7 & XCode 5
* remove x.264 module(coming soon)

##iOS 7 & XCode Version Requirement
---

* XCode 5 or later
* iOS 7

##How to use?
---

###Download & Compile ffmpeg

    git clone git@github.com:lvjian700/ffmpegc.git
    cd ffmpegc
    ./install-ffmpeg.sh

###How to use ?

You can find output in "ffmpegc/build/built/universal".	

1. Drag lib/*.a files to your project(copy to project).
2. Add include folder to your "Header Search Paths".	




##iOS 6 Version Requirement(Old Version)
---

You can find old version in release tabs.	

* XCode 4.*
* CommandLine Tools
* iOS 6.*

##How to use?
---

###Download & Compile ffmpeg

    git clone git@github.com:lvjian700/ffmpegc.git
    cd ffmpegc
    ./install-ffmpeg.sh

###Custom

1.Change ffmpeg version:	
Change this line on install-ffmpeg.sh file:	

	VERSION="1.2.1"	

2.Change iOSSDK version:	
Change this line on each compile-*.sh file:	

	SDKVERSION="6.1"	


###How to use ffmpeg?   

You can see this project:  
[ffmpegc-demo](https://github.com/lvjian700/ffmpegc-demo)   


##Occur mistake?
---

1. You may not install XCode command-line tools
2. /usr/sbin/gas-preprocessor.pl file exists. "sudo rm /usr/sbin/gas-preprocessor.pl" 
	

Thanks @Ronan0912. I can add armv7s support from this blog:	
 <http://www.tangentsoftworks.com/blog/2012/11/12/how-to-prepare-your-mac-for-ios-development-with-ffmpeg-libraries/>
 
[x264_1]: http://ffmpeg.org/trac/ffmpeg/wiki/x264EncodingGuide "x264 library"


 

