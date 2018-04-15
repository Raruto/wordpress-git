#!/bin/bash

# Default options
LOCALE="it_IT"
DB_HOST='127.0.0.1'
DB_USER='root'
DB_PASS='root'
DB_PREFIX=''
CURRENT_FOLDER_NAME=${PWD##*/}
ADMIN_USER='admin'
ADMIN_PASSWORD=''
ADMIN_EMAIL='admin@example.com'

#printf "WordPress Admin Password: "
#read ADMIN_PASSWORD

#printf "WordPress Admin Password: "
#read ADMIN_PASSWORD

# Install WordPress and create the wp-config.php file...
wp core download --locale=$LOCALE 
wp core config --dbname=$CURRENT_FOLDER_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_HOST --dbprefix=$DB_PREFIX 
wp core install --title=$CURRENT_FOLDER_NAME --url="http://$DB_HOST/$CURRENT_FOLDER_NAME" --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --skip-email

# Update WordPress options
wp option update permalink_structure '/%postname%/'  
#wp option update default_ping_status 'closed'  
#wp option update default_pingback_flag '0'  

# Install and activate defaults plugins
wp plugin install abt-relative-urls add-custom-post-types-archive-to-nav-menus hide-update-reminder underconstruction better-wp-security backwpup --activate 

# Install defaults plugins
wp plugin install gravity-forms-placeholders disqus-comment-system regenerate-thumbnails widget-classes custom-post-widget jetpack w3-total-cache wordpress-seo 

# Update plugins
wp plugin update --all 

# BackWPup options
wp option update backwpup_cfg_showadminbar '0'  

# Import photo samples
#wp media import https://dl.dropboxusercontent.com/u/15052756/photo-samples/flowers-01.jpg
