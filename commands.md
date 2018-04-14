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

---

#### The Short Way (Creating a new DB in MAMP & Install a new Wordpress instance):
`wp core download --locale=it_IT`

`mysql --host=127.0.0.1 -uroot -proot -e  `**`"CREATE DATABASE wordpress_1;"`**`;`

`wp core config `**`--dbname=wordpress_1`**` --dbuser=root --dbpass=root --dbhost=127.0.0.1`

`wp core install `**`--url=http://127.0.0.1/folder-name`**` `**`--title="Site Name"`**` `**`--admin_name="admin"`**` `**`--admin_password="admin"`**` `**`--admin_email="example@example.com"`**` --skip-email`

