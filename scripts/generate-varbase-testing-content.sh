#!/bin/usr/env bash


## cd PROJECT_DIR_NAME/docroot/modules/contrib/varbase_vmi_demo/scripts/
## bash generate-varbase-testing-content.sh

../../../../../vendor/drush/drush/drush pm:enable varbase_blog

../../../../../vendor/drush/drush/drush pm:enable devel_generate ;
../../../../../vendor/drush/drush/drush pm:enable varbase_media_default_content ;

../../../../../vendor/drush/drush/drush devel-generate:terms tags 10;
../../../../../vendor/drush/drush/drush devel-generate:terms blog_categories 5 ;

../../../../../vendor/drush/drush/drush devel-generate:content --bundles=varbase_blog --languages='en' 50;
../../../../../vendor/drush/drush/drush devel-generate:content --bundles=post --languages='en' 50;
../../../../../vendor/drush/drush/drush devel-generate:content --bundles=episode --languages='en' 50;
../../../../../vendor/drush/drush/drush devel-generate:content --bundles=varbase_heroslider_media --languages='en' 6;

