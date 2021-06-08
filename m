#!/bin/bash
# Environmental FireWall Management for bash console
# Specially for own RaspiWall device
# by Tomas Mark 2021
# automatic git management
####################################################

CURRPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
PS3="Select operation: "

# git management
cd $CURRPATH
changed="0"
echo $changed
git pull | grep -q -v 'Already up to date.' && changed="1"
echo $changed

if [[ "$changed" -eq 1 ]]; then
	echo $changed
	echo "Script pulled by git. Exiting ..."
	exit 1
#
fi

# main menu
select opt in editme gitme wolme vortex-mount vortex-umount watchdoglog authlog kernlog syslog messages cronlog unifilog iplog ipdos f2blog ipwatch ip6watch ipedit ip6edit iprestore ip6restore f2bjail f2bstatus f2bsshdstatus f2bunbanip f2bbanip mountNC umountNC unifiON unifiOFF smartsda dog wifiap quit; do

    case "$opt" in
        editme)
            sudo nano -c "$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"/m
            break
            ;;
        gitme)
			echo "Be care for private thinks!!!"
			echo ""
			echo $CURRPATH
			cd $CURRPATH
			git status
			git add .
			git status
			git commit -m "Commit by: $HOSTNAME "
			git push -u origin main
            break
            ;;
        wolme)
			wakeonlan -i 192.168.79.255 -p 9 04:D9:F5:D4:1F:44
            break
            ;;
        vortex-mount)
			sudo mount.cifs //PC-VORTEX/Shared ~/pc-vortex -o credentials=/root/.smbcreden
            break
            ;;
        vortex-umount)
			sudo umount ~/pc-vortex
            break
            ;;
        wollucia)
			#tohle fungovat na WiFi nebude :-)
			wakeonlan -i 192.168.79.255 -p 9 C0:38:96:34:E5:8F
            break
            ;;
		watchdoglog)
			sudo grc tail -f -n 150 /var/log/watchdog.log
			break
			;;
		authlog)
			sudo grc tail -f -n 150 /var/log/auth.log
			break
			;;
		kernlog)
            sudo grc tail -f -n 150 /var/log/kern.log
            break
            ;;
		syslog)
            sudo grc tail -f -n 150 /var/log/syslog
            break
            ;;
		messages)
            sudo grc tail -f -n 150 /var/log/messages
            break
            ;;
		cronlog)
            sudo grc tail -f -n 150 /var/log/cron.log
            break
            ;;
		unifilog)
            sudo grc tail -f -n 150 /var/log/unifi/server.log
            break
            ;;
		iplog)
			sudo grc tail -f -n 250 /var/log/iptables.log
			break;
			;;
		ipdos)
			sudo /home/tomas/scripts/tools/./whoisall
			break;
			;;
		f2blog)
            sudo grc tail -f -n 250 /var/log/fail2ban.log
            break;
            ;;
		ipwatch)
			sudo watch -d -n 2 --interval=1 'iptables -nvL'
			break
			;;
       ip6watch)
            sudo watch -d -n 2 --interval=1 'ip6tables -nvL'
            break
            ;;
		ipedit)
			sudo nano /etc/iptables/rules.v4
            break
            ;;
		ip6edit)
			sudo nano /etc/iptables/rules.v6
            break
            ;;
        iprestore)
			sudo service fail2ban restart
			sudo iptables-restore < /etc/iptables/rules.v4
		break
            ;;
		ip6restore)
			sudo service fail2ban restart
            sudo ip6tables-restore < /etc/iptables/rules.v6
            break
            ;;
		f2bjail)
			sudo nano /etc/fail2ban/jail.local
			break
			;;
		f2bstatus)
            sudo fail2ban-client status
            break
            ;;
		f2bsshdstatus)
			sudo fail2ban-client status sshd
			break
			;;
		f2bunbanip)
			echo Enter IP to unban: 
			read ipaddr
			sudo fail2ban-client set sshd unbanip $ipaddr
            break
            ;;
		f2bbanip)
			echo Enter IP to ban: 
			read ipaddr
			sudo fail2ban-client set sshd banip $ipaddr
            break
            ;;
		mountNC)
			sudo mount.davfs https://cloud.debianium.com/remote.php/dav/files/tomas /home/tomas/webdav/
            break
            ;;
		umountNC)
			sudo umount /home/tomas/webdav
            break
            ;;
		unifiON)
			sudo service mongodb start
			sudo service unifi start
            break
            ;;
		unifiOFF)
			sudo service unifi stop
			sudo service mongodb stop
            break
            ;;
		smartsda)
			sudo smartctl /dev/sda -d sat -a
            break
            ;;
		dog)
            sudo /home/tomas/scripts/tools/./bcmstat.sh
            break
            ;;
		wifiap)
			sudo nano /etc/hostapd/hostapd.conf
            break
            ;;
        quit)
            break
            ;;
        *)
            echo "Invalid option $REPLY"
            ;;
    esac
done
