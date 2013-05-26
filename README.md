Compile ffmpeg(include [x264 module][x264_1]) for iOS, support armv7s , armvs7 & i386 simulator. 

##Requirement
---

* XCode 4.5 or later
* CommandLine Tools
* iOS 6.0 or later

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


 

