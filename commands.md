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
1. `wp core download`
2. `mysql --host=127.0.0.1 -uroot -proot -e  "CREATE DATABASE `**`insert_db_name_here`**`;";`
3. `wp core config --dbname=`**`insert_db_name_here`**` --dbuser=root --dbpass=root --dbhost=127.0.0.1`
4. `wp core install --url=http://127.0.0.1/`**`insert_site_name_here`**` --title="`**`insert_site_title_here`**`" --admin_name="`**`insert_admin_name_here`**`" admin_email="`**`insert_admin_email_here`**`" --admin_password="`**`insert_admin_password_here`**`"`

