#!/usr/bin/env bash
echo "=========================================== Enable Maintence Mode ===========================================";
/opt/rh/rh-php71/root/usr/bin/php bin/magento maintenance:enable

echo "=========================================== Clean Generated Files ===========================================";
rm -rf generated/*

echo "=========================================== Run Setup Upgrade ===========================================";
/opt/rh/rh-php71/root/usr/bin/php  -d memory_limit=-1 bin/magento setup:upgrade

echo "=========================================== Regenerate Static Files/ ===========================================";
/opt/rh/rh-php71/root/usr/bin/php -d memory_limit=-1 bin/magento setup:di:compile

echo "=========================================== Clean Static Files ===========================================";
rm -rf var/view_preprocessed/* pub/static/*;

echo "=========================================== Regenerate Static Files/ ===========================================";
/opt/rh/rh-php71/root/usr/bin/php -dmemory_limit=-1 bin/magento setup:static-content:deploy -f;

echo "=========================================== Cache flush ==========================================";
/opt/rh/rh-php71/root/usr/bin/php bin/magento cache:flush;

echo "=========================================== Disable Maintence Mode ===========================================";
/opt/rh/rh-php71/root/usr/bin/php bin/magento maintenance:disable
