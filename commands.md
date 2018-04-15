# List of useful CLI commands

---

## WP CLI

#### To update: 
- “Wordpress”: `wp update core`

#### Solving common issues:
- _“Another update is currently in progress”_: `wp option delete core_updater.lock`

---

## MySQL Server

#### 1. Connect to Server:
- for a MAMP installation use: `mysql --host=127.0.0.1 -uroot -proot`

#### 2. Show saved DBs:
- `SHOW DATABASES;`

#### 3. Create a new DB:
- `CREATE DATABASE my_new_db_name;`

#### 4. Exit:
- `exit;`

#### The short way (MAMP)
- `mysql --host=127.0.0.1 -uroot -proot -e  "CREATE DATABASE my_new_db_name;";`

---

## All in One WP Migration Plugin

#### Install the plugin

`wp plugin install all-in-one-wp-migration --activate` (You must reload the page once before continuing)

#### Do a backup (DB only)

`wp ai1wm backup --exclude-media --exclude-themes --exclude-inactive-themes --exclude-muplugins --exclude-plugins --exclude-inactive-plugins --exclude-cache`

Suggested: use `"rsync"` to sync media files.

#### Restore a backup

1. `cd wp-content/ai1wm-backups/` (go to backup directory) or `mkdir wp-content/ai1wm-backups/` (create if does not exist)

2. `wget http://example.com/wp-content/ai1wm-backups/backup-20180105-142530-313.wpress` (download the backup)

3. `wp ai1wm restore backup-20180105-142530-313.wpress` (restore from the backup)

4. `wp rewrite flush` (flush permalinks, do it once or twice if you encounter problems)

5. `rm backup-20180105-142530-313.wpress` (remember to delete the backup file from the source as well)
