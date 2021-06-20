## Welcome to my github.

> All the resources that will appear here in the future are source code parts of my own SmartHome IT Environment named Debianium.


## Network Devices

### RaspiWall
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
```
       _,met$$$$$gg.          tomas@server1.debianium.com
    ,g$$$$$$$$$$$$$$$P.       ---------------------------
  ,g$$P"     """Y$$.".        OS: Debian GNU/Linux 10 (buster) x86_64
 ,$$P'              `$$$.     Host: Virtual Machine Hyper-V UEFI Release v4.0
',$$P       ,ggs.     `$$b:   Kernel: 4.19.0-16-amd64
`d$$'     ,$P"'   .    $$$    Uptime: 10 days, 3 hours, 11 mins
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

	* PostFix ***Accessible***
	
	* NextCloud WebServer Application with all the benefits ***Accessible***

	* ISPConfig Application for Webhosting  Management ***InAccessible***
		( webs for example )
		*	fortune.debianium.com
		*	fortunka.debianium.com - Czech version


# For You

It might be useful for you to look at the individual files that I considered appropriate to publish. The repository is gradually expanding with the necessary files and is used mainly for sharing these tools between individual servers that I manage in the SmartHome IT environment.
The most interesting is probably the file *** m ***, which serves as a default script for all basic operations, which are often repeated.
