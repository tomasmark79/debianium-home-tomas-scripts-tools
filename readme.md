## Welcome to my github.

> SmartHome IT Environment

### RaspiWall
* Services
#### Network ISP gateway (1GBit/s)
#### FireWall controller (IPTables)
#### Unifi network controller
#### Network monitoring
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
       _,met$$$$$gg.          tomas@hyperium.debianium.com
    ,g$$$$$$$$$$$$$$$P.       ----------------------------
  ,g$$P"     """Y$$.".        OS: Debian GNU/Linux 10 (buster) x86_64
 ,$$P'              `$$$.     Host: Virtual Machine Hyper-V UEFI Release v4.0
',$$P       ,ggs.     `$$b:   Kernel: 4.19.0-16-amd64
`d$$'     ,$P"'   .    $$$    Uptime: 4 days, 12 hours, 4 mins
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
       _,met$$$$$gg.          tomas@HyperiumCA
    ,g$$$$$$$$$$$$$$$P.       ----------------
  ,g$$P"     """Y$$.".        OS: Debian GNU/Linux 10 (buster) x86_64
 ,$$P'              `$$$.     Host: Virtual Machine Hyper-V UEFI Release v4.0
',$$P       ,ggs.     `$$b:   Kernel: 4.19.0-13-amd64
`d$$'     ,$P"'   .    $$$    Uptime: 9 hours, 13 mins
 $$P      d$'     ,    $$P    Packages: 1763 (dpkg)
 $$:      $$.   -    ,d$$'    Shell: bash 5.0.3
 $$;      Y$b._   _,d$P'      Terminal: /dev/pts/0
 Y$$.    `.`"Y$$$$P"'         CPU: AMD Ryzen 9 3900X 12- (12) @ 3.800GHz
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
	* PostFix ***Accessible***
	* NextCloud WebServer Application with all the benefits ***Accessible***
	* ISPConfig Application for Webhosting  Management ***InAccessible***
* Hardware
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
	* PostFix
	* NextCloud WebServer Application with all the benefits
	* ISPConfig Application for Webhosting  Management

## For You

It might be useful for you to look at the individual files that I considered appropriate to publish. The repository is gradually expanding with the necessary files and is used mainly for sharing these tools between individual servers that I manage in the SmartHome IT environment.
The most interesting is probably the file *** m ***, which serves as a default script for all basic operations, which are often repeated.
