#!/usr/bin/env bash
echo "=========================================== Enable Maintence Mode ===========================================";
php bin/magento maintenance:enable

echo "=========================================== Clean Generated Files ===========================================";
rm -rf generated/*

echo "=========================================== Run Setup Upgrade ===========================================";
php  -d memory_limit=-1 bin/magento setup:upgrade

echo "=========================================== Regenerate Static Files/ ===========================================";
php -d memory_limit=-1 bin/magento setup:di:compile

echo "=========================================== Clean Static Files ===========================================";
rm -rf var/view_preprocessed/* pub/static/*;

echo "=========================================== Regenerate Static Files/ ===========================================";
php -dmemory_limit=-1 bin/magento setup:static-content:deploy -f;

echo "=========================================== Cache flush ==========================================";
php bin/magento cache:flush;

echo "=========================================== Disable Maintence Mode ===========================================";
php bin/magento maintenance:disable
