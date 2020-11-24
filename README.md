# wgProxyList for MediaWiki using SFS blacklist
- https://www.mediawiki.org/wiki/Manual:$wgProxyList
- https://github.com/angelperezleon/wgProxyList
 
 **Purpose**
 
Protect MediaWiki or other CMS based installations with a list of spam offending IP address found over at "Stop Forum Spam".

**Installation**

 Use the main script (**bannedips.sh**) to pull a list of banned IP found under the https://www.stopforumspam.com/ project.
 Add to MediaWiki **LocalSettings.php file** the following:
 - #wgProxyList stopforumspam ban list
 - require_once "$IP/bannedips.php";+
You can also add the script to any other CMS that can be edited to called upon the bannedips.php banlist file.

**Cron job**
- #Pull StopForumSpam IP Black List every Saturday at 8:56pm
- 56 20 * * 6 /opt/bannedips/bannedips.sh >> /opt/bannedips/bannedips_$(date +\%d\%b\%Y-\%H\%M\%S).log 2>&1

**Todo**
- [ ] create this todo list
