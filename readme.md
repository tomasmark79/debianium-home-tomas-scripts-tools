last update 2022-07-23-happy-hour

## Welcome to my github.

> SmartHome IT Environment

Debianium is the name of self Home IT Environment Service

### RaspiWall - Happy Hour - 50 days of UpTime Tested
* Services
	* Network ISP gateway (1GBit/s)
	* FireWall controller (IPTables)
	* Unifi network controller
	* Network monitoring
* Hardware
```
  `.::///+:/-.        --///+//-:``    @raspiwall.debianium.com
 `+oooooooooooo:   `+oooooooooooo:    -----------------------------
  /oooo++//ooooo:  ooooo+//+ooooo.    OS: Raspbian GNU/Linux 10 (buster) armv7l
  `+ooooooo:-:oo-  +o+::/ooooooo:     Host: Raspberry Pi 4 Model B Rev 1.2
   `:oooooooo+``    `.oooooooo+-      Kernel: 5.10.42-v7l-lutein79+
     `:++ooo/.        :+ooo+/.`       
        ...`  `.----.` ``..           Packages: 751 (dpkg)
     .::::-``:::::::::.`-:::-`        Shell: bash 5.0.3
    -:::-`   .:::::::-`  `-:::-       Terminal: /dev/pts/1
   `::.  `.--.`  `` `.---.``.::`      CPU: BCM2711 (4) @ 1.500GHz
       .::::::::`  -::::::::` `       Memory: 469MiB / 3837MiB
 .::` .:::::::::- `::::::::::``::.
-:::` ::::::::::.  ::::::::::.`:::-
::::  -::::::::.   `-::::::::  ::::
-::-   .-:::-.``....``.-::-.   -::-
 .. ``       .::::::::.     `..`..
   -:::-`   -::::::::::`  .:::::`
   :::::::` -::::::::::` :::::::.
   .:::::::  -::::::::. ::::::::
    `-:::::`   ..--.`   ::::::.
      `...`  `...--..`  `...`
            .::::::::::
             `.-::::-`
```
### Hyperium
* Services
	* OpenVPN Server
* Hardware
```
       _,met$$$$$gg.          @hyperium.debianium.com
    ,g$$$$$$$$$$$$$$$P.       ----------------------------
  ,g$$P"     """Y$$.".        OS: Debian GNU/Linux 10 (buster) x86_64
 ,$$P'              `$$$.     Host: Virtual Machine Hyper-V UEFI Release v4.0
',$$P       ,ggs.     `$$b:   Kernel: 4.19.0-17-amd64
`d$$'     ,$P"'   .    $$$
 $$P      d$'     ,    $$P    Packages: 1697 (dpkg)
 $$:      $$.   -    ,d$$'    Shell: bash 5.0.3
 $$;      Y$b._   _,d$P'      Terminal: /dev/pts/0
 Y$$.    `.`"Y$$$$P"'         CPU: AMD Ryzen 9 3900X 12- (2) @ 3.800GHz
 `$$b      "-.__              Memory: 485MiB / 921MiB
  `Y$$
   `Y$$.
     `$$b.
       `Y$$b.
          `"Y$b._
              `"""
```
### HyperiumCA
* Services
	* rsa certificates signing for OpenVPN clients
* Hardware
```
       _,met$$$$$gg.          @HyperiumCA
    ,g$$$$$$$$$$$$$$$P.       ----------------
  ,g$$P"     """Y$$.".        OS: Debian GNU/Linux 10 (buster) x86_64
 ,$$P'              `$$$.     Host: Virtual Machine Hyper-V UEFI Release v4.0
',$$P       ,ggs.     `$$b:   Kernel: 4.19.0-17-amd64
`d$$'     ,$P"'   .    $$$
 $$P      d$'     ,    $$P    Packages: 1763 (dpkg)
 $$:      $$.   -    ,d$$'    Shell: bash 5.0.3
 $$;      Y$b._   _,d$P'      Terminal: /dev/pts/0
 Y$$.    `.`"Y$$$$P"'         CPU: AMD Ryzen 9 3900X 12- (2) @ 3.800GHz
 `$$b      "-.__              Memory: 287MiB / 920MiB
  `Y$$
   `Y$$.
     `$$b.
       `Y$$b.
          `"Y$b._
              `"""
```

### Server1
* Services
	* PostFix
	* NextCloud WebServer Application with all the benefits
	* ElasticSearch fulltext search engine
	* Tesseract OCR service
	* ISPConfig Application for Webhosting  Management
* Hardware
```
       _,met$$$$$gg.          @server1.debianium.com
    ,g$$$$$$$$$$$$$$$P.       ---------------------------
  ,g$$P"     """Y$$.".        OS: Debian GNU/Linux 10 (buster) x86_64
 ,$$P'              `$$$.     Host: Virtual Machine Hyper-V UEFI Release v4.0
',$$P       ,ggs.     `$$b:   Kernel: 4.19.0-17-amd64
`d$$'     ,$P"'   .    $$$
 $$P      d$'     ,    $$P    Packages: 3468 (dpkg)
 $$:      $$.   -    ,d$$'    Shell: bash 5.0.3
 $$;      Y$b._   _,d$P'      Terminal: /dev/pts/0
 Y$$.    `.`"Y$$$$P"'         CPU: AMD Ryzen 9 3900X 12- (4) @ 3.799GHz
 `$$b      "-.__              Memory: 3838MiB / 7977MiB
  `Y$$
   `Y$$.
     `$$b.
       `Y$$b.
          `"Y$b._
              `"""
```
### AgentDVR
* Services
    * AgentDVR
* Hardware
```
  `.::///+:/-.        --///+//-:``    pi@raspberrypi
 `+oooooooooooo:   `+oooooooooooo:    --------------
  /oooo++//ooooo:  ooooo+//+ooooo.    OS: Raspbian GNU/Linux 11 (bullseye) armv7l
  `+ooooooo:-:oo-  +o+::/ooooooo:     Host: Raspberry Pi 3 Model B Plus Rev 1.3
   `:oooooooo+``    `.oooooooo+-      Kernel: 5.10.63-v7+
     `:++ooo/.        :+ooo+/.`       Uptime: 10 hours, 43 mins
        ...`  `.----.` ``..           Packages: 1343 (dpkg), 3 (snap)
     .::::-``:::::::::.`-:::-`        Shell: bash 5.1.4
    -:::-`   .:::::::-`  `-:::-       Resolution: 720x480
   `::.  `.--.`  `` `.---.``.::`      Terminal: /dev/pts/0
       .::::::::`  -::::::::` `       CPU: BCM2835 (4) @ 1.400GHz
 .::` .:::::::::- `::::::::::``::.    Memory: 201MiB / 922MiB
-:::` ::::::::::.  ::::::::::.`:::-
::::  -::::::::.   `-::::::::  ::::
-::-   .-:::-.``....``.-::-.   -::-
 .. ``       .::::::::.     `..`..
   -:::-`   -::::::::::`  .:::::`
   :::::::` -::::::::::` :::::::.
   .:::::::  -::::::::. ::::::::
    `-:::::`   ..--.`   ::::::.
      `...`  `...--..`  `...`
            .::::::::::
             `.-::::-` 
```
