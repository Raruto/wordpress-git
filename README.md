# wordpress-git

This is a simple skeleton repo for managing a WordPress site using: **wp-cli**, **git**, **composer**
![Wordpress + Git + Composer](https://cdn.deliciousbrains.com/content/uploads/2015/05/Git-Composer.png)

## Getting Started

1. Clone this repo within the local web root folder (eg through [GitHub Desktop](https://desktop.github.com/)/[Atom.io](https://atom.io/) and [MAMP](https://www.mamp.info/)).
2. **NB** Rename the cloned folder (_wordpress-git_) to something more friendly (eg _site-name_).
3. Within this folder, now you can alternately run:
      1. `wp core download` to install wordpress (or even better [`wp core install`](#pro-tip---creating-a-new-db-in-mamp--install-a-new-wordpress-instance))<br>`composer install` to install any required plugin/theme (`composer update` it's also fine).
      2. [`one-click-install.sh`](./one-click-install.sh) to perform all these things (and more) automatically.
6. Happy coding...

### remember to...
- Add to the **composer.json** file all of the wordpress plugins and themes (eg from [wpackagist](http://wpackagist.org/)) that might be required in this wordpress installation.
- Add to the **.gitignore** file all of your custom plugins/themes that you want to keep under git control (add `!wp-content/plugins/my-plugin-name` for a custom plugin and `!wp-content/themes/my-theme-name` for a custom theme).

### Requirements
**[localhost](http://127.0.0.1):** [wp-cli](https://make.wordpress.org/cli/handbook/installing/), [git](https://git-scm.com/downloads), [composer](https://getcomposer.org/doc/00-intro.md) (and wordpress..)

**live server:** ftp access or _**even better**_ [GitHubUpdater CI](https://medium.com/@limikael/continuous-integration-for-wordpress-d152ec4852e5) (and wordpress..)

## Contribution

 You can fork it and submit your change with a pull request !
 
---

# List of useful CLI commands

---

## WP CLI

#### To update: 
- “Wordpress”: `wp update core`

#### Solving common issues:
- _“Another update is currently in progress”_: `wp option delete core_updater.lock`

#### Pro Tip - "Creating a new DB in MAMP & Install a new Wordpress instance":

`wp core download `**`--locale=it_IT`**

`wp core config `**`--dbname=wp_test`**` --dbuser=root --dbpass=root --dbhost=127.0.0.1`

`wp db create`

`wp core install `**`--url=http://127.0.0.1/folder-name`**` `**`--title="Site Name"`**` `**`--admin_name="admin"`**` `**`--admin_password="admin"`**` --admin_email="example@example.com" --skip-email`

---

## MySQL Server

#### 1. Connect to Server:
- for a MAMP installation use: `mysql --host=127.0.0.1 -uroot -proot`

#### 2. Show saved DBs:
- `SHOW DATABASES;`

#### 3. Create a new DB:
- `CREATE DATABASE my_new_db_name;` (to delete a DB: `DROP DATABASE my_db_name;`)

#### 4. Exit:
- `exit;`

#### Pro Tip: - The short way: "Creating a new DB" (MAMP)
- `mysql --host=127.0.0.1 -uroot -proot -e  "CREATE DATABASE my_new_db_name;";`

---

### All in One WP Migration (WP CLI Plugin)

#### Install the plugin

`wp plugin install all-in-one-wp-migration --activate` (You must reload the page once before continuing)

#### Do a backup (DB only)

`wp ai1wm backup --exclude-media --exclude-themes --exclude-inactive-themes --exclude-muplugins --exclude-plugins --exclude-inactive-plugins --exclude-cache`

Suggested: use `"rsync"` to sync media files.

#### Restore a backup

1. `cd wp-content/ai1wm-backups/` (go to backup directory) or `mkdir wp-content/ai1wm-backups/` (create if does not exist)

2. `wget http://example.com/wp-content/ai1wm-backups/backup-name.wpress` (download the backup)

3. `wp ai1wm restore backup-name.wpress` (restore from the backup)
    
    **Remember:** backup file must be located in the "ai1wm-backups" directory.    

4. `wp rewrite flush` (flush permalinks, do it once or twice if you encounter problems)

5. `rm backup-name.wpress` (remember to delete the backup file from the source as well)

---

### Windows Subsystem for Linux ("Windows Bash")
- force use of native binaries (run `nano ~.bash_aliases`, append the following lines and after run `source ~.bash_aliases`):
   - php: `alias php=php.exe`
   - wp-cli: `alias wp='cmd.exe /c wp'`
   - composer: `alias composer='cmd.exe /c composer'`
- create a shortcut to your windows user folder: `ln -s /mnt/c/Users/<USERNAME> ~/<USERNAME>`

