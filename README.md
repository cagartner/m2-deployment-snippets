# Magento 2 Deployment Commands Snippet

This will run all the required commands to do a successful deploy for Magento 2 applications

## How to use
Download or create the following files in your magento root directory on the server:

### Full default deploy 
This command will run the followings commands:
- Enable the Maintenance Mode
- Setup Upgrade
- Setup DI Compile
- Deploy the Static Content
- Clean the Cache

**Download the File**
```bash
wget https://raw.githubusercontent.com/redstage/m2-deployment-snippets/master/deploy.sh
```
or for Octane Servers with Magento 2.3.1+:
```bash
wget https://raw.githubusercontent.com/redstage/m2-deployment-snippets/master/deploy-octane-php-71.sh deploy.sh
```

**Usage**
Just running like that:
```bash
./deploy.sh
```

### Full default deploy for Magento 2.3.1 + in Octane Servers
Do the same that the `deploy.sh` but with the path of octane PHP7.1

**Download the File**
```bash
wget https://raw.githubusercontent.com/redstage/m2-deployment-snippets/master/deploy-octane-php-71.sh deploy.sh
```

### Frontend Deploy
Just run the commands for frontend deploy

This command will run the followings commands:
- Enable the Maintenance Mode
- Deploy the Static Content
- Clean the Cache

```bash
wget https://raw.githubusercontent.com/redstage/m2-deployment-snippets/master/frontdeploy.sh
```
or for Octane Servers with Magento 2.3.1+:
```bash
wget https://raw.githubusercontent.com/redstage/m2-deployment-snippets/master/frontdeploy-octane-php71.sh frontdeploy.sh
```

**Usage**
Just running like that:
```bash
./frontdeploy.sh
```