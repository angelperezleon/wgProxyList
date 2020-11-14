# wgProxyList for MediaWiki is found here:
 https://www.mediawiki.org/wiki/Manual:$wgProxyList

**Installation**

*bannedips.sh*

 Use the main script (bannedips.sh) to pull a list of banned IP found under the https://www.stopforumspam.com/ project.

**Cron job**
- # Pull StopForumSpam IP Black List every Saturday at 8:56pm
- 56 20 * * 6 /opt/bannedips/bannedips.sh >> /opt/bannedips/bannedips_$(date +\%d\%b\%Y-\%H\%M\%S).log 2>&1

**Todo**
- [] create this todo list
