#!/usr/bin/env bash
echo "=========================================== Enable Maintence Mode ===========================================";
/opt/rh/rh-php71/root/usr/bin/php bin/magento maintenance:enable

echo "=========================================== Clean Static Files ===========================================";
rm -rf var/view_preprocessed/* pub/static/*;

echo "=========================================== Regenerate Static Files/ ===========================================";
/opt/rh/rh-php71/root/usr/bin/php -dmemory_limit=-1 bin/magento setup:static-content:deploy -f;

echo "=========================================== Cache flush ==========================================";
/opt/rh/rh-php71/root/usr/bin/php bin/magento cache:flush;

echo "=========================================== Disable Maintence Mode ===========================================";
/opt/rh/rh-php71/root/usr/bin/php bin/magento maintenance:disable
