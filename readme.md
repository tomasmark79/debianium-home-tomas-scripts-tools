## Welcome to my github.

> All the resources that will appear here in the future are source code parts of my own SmartHome IT Environment named Debianium.


## Network Devices

### RaspiWall
```
Board: 4 x ARMv7 cores available, ondemand governor (Pi4 Model B rev 1.2, BCM2838 SoC with 4GB RAM by Sony UK)
Memory: 1023MB (split 947MB ARM, 76MB GPU) plus 100MB Swap
HW Block: |   ARM   |  Core  |  H264  |    SDRAM    |
Min Freq: |  600MHz | 250MHz |   0MHz |   3180MHz   |
Max Freq: | 1500MHz | 500MHz | 500MHz |   3180MHz   |
Voltages: |         0, 0.8875V        |  0, 1.2000V |
   Other: temp_limit=85
Firmware: May 27 2021 14:02:15, version 7d9a298cda813f747b51fe17e1e417e7bf5ca94d (clean) (release) (start)
  Codecs: H264 MJPG PCM
```
	* Network ISP gateway (1GBit/s) ***InAccesible***

	* FireWall controller ***InAccessible*** (IPTables)

	* Unifi network controller ***InAccessible***

	* Network monitor ***InAccesible***

### Hyperium
#### Hypervizor Hyper-V on MS Windows 10 Pro hosted ***Debian 10 Buster***

	* OpenVPN Server ***Accessible***

### HyperiumCA
#### Hypervizor Hyper-V on MS Windows 10 Pro hosted ***Debian 10 Buster***

	* rsa certificates signing for OpenVPN clients ***offline***

### Server1
#### Hypervizor Hyper-V on MS Windows 10 Pro hosted ***Debian 10 Buster***
	
	* PostFix ***Accessible***
	
	* NextCloud WebServer Application with all the benefits ***Accessible***

	* ISPConfig Application for Webhosting  Management ***InAccessible***
		( webs for example )
		*	fortune.debianium.com
		*	fortunka.debianium.com - Czech version


# For You

It might be useful for you to look at the individual files that I considered appropriate to publish. The repository is gradually expanding with the necessary files and is used mainly for sharing these tools between individual servers that I manage in the SmartHome IT environment.
The most interesting is probably the file *** m ***, which serves as a default script for all basic operations, which are often repeated.
