#!/bin/bash
cd /public_html/wiki
wget https://www.stopforumspam.com/downloads/listed_ip_30_ipv46.gz
gzip -d listed_ip_30_ipv46.gz
cat > bannedips.php << 'EOF'
<?php
$wgProxyList = array(
EOF
sed -e 's/^/  "/; s/$/",/' < listed_ip_30_ipv46 >> bannedips.php
printf '%s\n' ');' >> bannedips.php
rm -f listed_ip_30_ipv46
