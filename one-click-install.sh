#!/bin/bash

# Windows Subsystem for Linux ("Windows Bash")
# You MUST use native Windows binaries:
# 1.Run: "nano ~.bash_aliases"
# 2 Append the following lines:
# 		php: alias php=php.exe
# 		wp-cli: alias wp='cmd.exe /c wp'
# 		composer: alias composer='cmd.exe /c composer'
# 3. Run: "source ~.bash_aliases" (Optional)

# If present load bash aliases
shopt -s expand_aliases
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Default options
LOCALE="it_IT"
DB_HOST='127.0.0.1'
DB_USER='root'
DB_PASS='root'
DB_PREFIX=''
CURRENT_FOLDER_NAME=${PWD##*/}
ADMIN_USER='admin'
ADMIN_PASSWORD='admin'
ADMIN_EMAIL='admin@example.com'

printf "\033[1;33mwp-config.php\033[m -----------------------------------------\n"
printf " DEBUG\t\t= \033[1;33menabled\033[m\n"
printf " MEMORY_LIMIT\t= \033[1;33m256MB\033[m\n"
echo "-------------------------------------------------------"
printf " installation-folder\t= \033[1;33m$PWD\033[m\n"
printf " login-url\t\t= \033[1;33mhttp://$DB_HOST/$CURRENT_FOLDER_NAME/wp-login.php\033[m\n"
printf " admin user\t\t= \033[1;33m$ADMIN_USER\033[m\n"
printf " admin password\t\t= \033[1;33m$ADMIN_PASSWORD\033[m\n"
echo "-------------------------------------------------------"
printf "\n"

#printf "WordPress Admin Password: "
#read ADMIN_PASSWORD

#printf "WordPress Admin Password: "
#read ADMIN_PASSWORD

# Install WordPress and create the wp-config.php file...
wp core download --locale=$LOCALE
wp core config --dbname=$CURRENT_FOLDER_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_HOST --dbprefix=$DB_PREFIX <<WP_DEBUG
define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);
define('WP_DEBUG_DISPLAY', true);
define('WP_MEMORY_LIMIT', '256M');
WP_DEBUG

wp db create
wp core install --title=$CURRENT_FOLDER_NAME --url="http://$DB_HOST/$CURRENT_FOLDER_NAME" --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --skip-email

composer install

# Update WordPress options
wp option update permalink_structure '/%postname%/'
#wp option update default_ping_status 'closed'
#wp option update default_pingback_flag '0'

# Install and activate defaults plugins
#wp plugin install abt-relative-urls add-custom-post-types-archive-to-nav-menus hide-update-reminder underconstruction better-wp-security backwpup --activate

# Install defaults plugins
#wp plugin install gravity-forms-placeholders disqus-comment-system regenerate-thumbnails widget-classes custom-post-widget jetpack w3-total-cache wordpress-seo

# Update plugins
#wp plugin update --all

# BackWPup options
#wp option update backwpup_cfg_showadminbar '0'

# Import photo samples
#wp media import https://dl.dropboxusercontent.com/u/15052756/photo-samples/flowers-01.jpg
