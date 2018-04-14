# List of useful CLI commands

---

## WP CLI

#### To install:
- “Wordpress”: `wp core download`

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

#### The Short Way (Creating a new DB in MAMP):
- `mysql --host=127.0.0.1 -uroot -proot -e  "CREATE DATABASE `**`insert_db_name_here`**`;";`
