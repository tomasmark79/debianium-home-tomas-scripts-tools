#!/bin/bash
# Environmental FireWall Management for bash console
# Specially for own RaspiWall device
# by Tomas Mark 2021
# automatic git management
####################################################
# Support for
# RaspiWall
# Server1
# Hyperium
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
select opt in editme gitme wolme \
RwNetRestart \
acmelog watchdoglog authlog kernlog syslog messages cronlog mail.info \
unifilog iplog ipdos f2blog ipwatch ip6watch ipedit ip6edit iprestore ip6restore f2bjail f2bstatus f2bunbanip f2bbanip unifiON unifiOFF smartsda dog diskspace wifiap wifistatus OVPNStatus OVPNLog OVPNPool elasticGClog elasticsearchlog \
DNSMasqEdit \
NextCloud_WindowsConnect \
NextCloud_WindowsDisconnect \
NextCloud_RescanFiles \
NextCloud_ShowInstalledApps \
NextCloud_CleanUp \
NextCloud_ScanAppData-repair-thumbnails \
NextCloud_repair-include-expensive \
NextCloud_preview-generate-all \
NextCloud_MaintananceON \
NextCloud_MaintananceOFF \
NextCloud_mountWebDav \
NextCloud_umountWebDav \
NextCloud_config-edit \
RoBoDev RoBoStart RoBoEdit \
PrintPHPVersion \
BookStackUpdateAutomatically \
readme quit; do

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
			git commit -m "Commited by: $HOSTNAME "
			git push -u origin main
            break
            ;;
        wolme)
			wakeonlan -i 192.168.79.255 -p 9 04:D9:F5:D4:1F:44
            break
            ;;
		acmelog)
			sudo tail -f /var/log/ispconfig/acme.log
			break
			;;
		RwNetRestart)
			sudo systemctl restart networking.service
			sudo ifdown --force wan0 && sudo ifup wan0
			ip a
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
		mail.info)
            sudo grc tail -f -n 150 /var/log/mail.info
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
            sudo fail2ban-client status sshd
			sudo fail2ban-client status postfix
			sudo fail2ban-client status dovecot
			sudo fail2ban-client status pure-ftpd
			sudo fail2ban-client status nextcloud
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
			sudo $CURRPATH/./bcmstat.sh
            break
            ;;
		diskspace)
			sudo du -shc /* | sort -rh
            break
            ;;
		wifiap)
			sudo nano /etc/hostapd/hostapd.conf
            break
            ;;
		wifistatus)
			sudo systemctl status hostapd.service
            break
            ;;
		OVPNStatus)
			sudo grc cat /var/log/openvpn/openvpn-status.log
            break
            ;;
		OVPNLog)
			sudo grc tail -f -n 200 /var/log/openvpn/openvpn.log
            break
            ;;
		OVPNPool)
			sudo grc cat /var/log/openvpn/openvpn.log | grep "pool"
            break
            ;;
		elasticGClog)
			sudo grc cat /var/log/elasticsearch/gc.log
            break
            ;;
		elasticsearchlog)
			sudo grc cat /var/log/elasticsearch/elasticsearch.log
			break
			;;
		DNSMasqEdit)
			sudo nano /etc/dnsmasq.conf
            break
            ;;
        NextCloud_WindowsConnect)
			sudo mount.cifs //PC-VORTEX/Shared ~/pc-vortex -o credentials=/root/.smbcreden
            break
            ;;
        NextCloud_WindowsDisconnect)
			sudo umount ~/pc-vortex
            break
            ;;
		NextCloud_RescanFiles)
			sudo -u web1 php /var/www/clients/client1/web1/web/./occ files:scan --all
            break
            ;;
		NextCloud_ShowInstalledApps)
			sudo -u web1 php --define apc.enable_cli=1 /var/www/clients/client1/web1/web/occ app:list
			break
			;;
		NextCloud_CleanUp)
			sudo -u web1 php --define apc.enable_cli=1 /var/www/clients/client1/web1/web/occ files:cleanup
			break
			;;

		NextCloud_ScanAppData-repair-thumbnails)
			sudo -u web1 php --define apc.enable_cli=1 /var/www/clients/client1/web1/web/occ files:scan-app-data
			break
			;;
		NextCloud_repair-include-expensive)
			sudo -u web1 php --define pac.enable_cli=1 /var/www/clients/client1/web1/web/./occ maintenance:repair --include-expensive
			break
			;;
		NextCloud_preview-generate-all)
			sudo -u web1 php --define pac.enable_cli=1 /var/www/clients/client1/web1/web/./occ preview:generate-all -vvv
			break
			;;
		NextCloud_MaintananceON)
			sudo -u web1 php --define pac.enable_cli=1 /var/www/clients/client1/web1/web/./occ maintenance:mode --on
			break
			;;
		NextCloud_MaintananceOFF)
			sudo -u web1 php --define pac.enable_cli=1 /var/www/clients/client1/web1/web/./occ maintenance:mode --off
			break
			;;
		NextCloud_mountWebDav)
			sudo mount.davfs https://cloud.debianium.com/remote.php/dav/files/tomas /home/tomas/webdav/
            break
            ;;
		NextCloud_umountWebDav)
			sudo umount /home/tomas/webdav
            break
            ;;
		NextCloud_config-edit)
			sudo nano /var/www/cloud.debianium.com/web/config/config.php
            break
            ;;
		RoBoDev)
			pkill screen
			source ~/.venvs/discord/bin/activate
			python3.10 /home/tomas/bots/bot.py
            break
            ;;
		RoBoStart)
			pkill screen
			screen -dm bash -c 'source ~/.venvs/discord/bin/activate; python3.10 /home/tomas/bots/bot.py'
			screen -list
            break
            ;;
		RoBoEdit)
			nano /home/tomas/bots/bot.py
            break
            ;;
#		TMusicBotDev)
#			source ~/.venvs/twitch/bin/activate
#			python3 /home/tomas/bots/bottwitch.py
#            break
#            ;;
#		TMusicBotStart)
#			screen -dm bash -c 'source ~/.venvs/twitch/bin/activate; python3 /home/tomas/bots/bottwitch.py'
#			screen -list
#           break
#            ;;
#		TMusicBotEdit)
#			nano /home/tomas/bots/bottwitch.py
#            break
#            ;;

		PrintPHPVersion)
			php -r "print phpinfo();" | grep ".ini"
            break
            ;;
		BookStackUpdateAutomatically)
			# TODO must be processed full in SU console and now not work
			sudo su
			cd /var/www/nenosto.debianium.com/web/BookStack/
			git pull origin release
			/usr/bin/php7.4 /usr/bin/composer install --no-dev
			php7.4 artisan migrate
			php7.4 artisan cache:clear
			php7.4 artisan config:clear
			php7.4 artisan view:clear
            break
            ;;
		readme)
			sudo nano -c $CURRPATH/readme.md
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
