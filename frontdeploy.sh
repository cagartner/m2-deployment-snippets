#!/usr/bin/env bash
echo "=========================================== Enable Maintence Mode ===========================================";
php bin/magento maintenance:enable

echo "=========================================== Clean Static Files ===========================================";
rm -rf var/view_preprocessed/* pub/static/*;

echo "=========================================== Regenerate Static Files/ ===========================================";
php -dmemory_limit=-1 bin/magento setup:static-content:deploy -f;

echo "=========================================== Cache flush ==========================================";
php bin/magento cache:flush;

echo "=========================================== Disable Maintence Mode ===========================================";
php bin/magento maintenance:disable
