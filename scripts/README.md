# Varbase VMO Demo Scripts

To generate new testing demo content
After changes on Varbase code and logic


1. Install Varbase with development tools
```
composer create-project vardot/varbase-project:10.0.x-dev PROJECT_DIR_NAME --no-interaction
```
And Install Varbase
And add and install all Varbase Extra components

2. Install Varbase VMI Demo
```
cd PROJECT_DIR_NAME
composer require vardot/varbase_vmi_demo:10.0.x-dev
```

3. Enable Varbase VMI Demos modules
Enable the ration you like to test or demo
```
cd PROJECT_DIR_NAME/docroot
../vendor/drush/drush/drush pm:enable varbase_vmi_standard_demo
../vendor/drush/drush/drush pm:enable varbase_vmi_traditional_demo
../vendor/drush/drush/drush pm:enable varbase_vmi_square_demo
```

4. Generate Media and Content for VMI
Content and media can be added manually, But a of list commands
 which would speed up the work
```
cd PROJECT_DIR_NAME/docroot/modules/contrib/varbase_vmi_demo/scripts/
bash generate-varbase-testing-content.sh
```

5. Go to "/admin/content" in the Varbase site
  And publish the content to show up in the VMI pre-set testing views

6. Remove the Summary from content at this time

More work to have this command publish and trim the summary on generate
