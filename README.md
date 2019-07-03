# wordpress-git

This is a simple skeleton repo for managing a WordPress site using: **wp-cli**, **git**, **composer**
[![Wordpress + Git + Composer](https://raruto.github.io/img/wordpress-git-composer.jpg)](https://raruto.github.io)

## Getting Started

1. Clone this repo within the local web root folder (eg through [GitHub Desktop](https://desktop.github.com/)/[Atom.io](https://atom.io/) and [MAMP](https://www.mamp.info/)).
2. **NB** Rename the cloned folder (_wordpress-git_) to something more friendly (eg _site-name_).
3. Run [`wp-install.sh`](./wp-install.sh) to automatically install within this folder wordpress and any other required plugins/themes.
6. Happy coding...

### remember to...
- Add to the **composer.json** file all of the wordpress plugins and themes (eg from [wpackagist](http://wpackagist.org/)) that might be required in this wordpress installation (generate one from a live site through [wp-devops](https://github.com/Raruto/wp-devops)).
- Add to the **.gitignore** file all of your custom plugins/themes that you want to keep under git control (add `!wp-content/plugins/my-plugin-name` for a custom plugin and `!wp-content/themes/my-theme-name` for a custom theme).

### Requirements
**[localhost](http://127.0.0.1):** [wp-cli](https://github.com/Raruto/wordpress-git/wiki/Installations#installing-wp-cli), [git](https://github.com/Raruto/wordpress-git/wiki/Installations#installing-git), [composer](https://github.com/Raruto/wordpress-git/wiki/Installations#installing-composer) (and wordpress..)

**live server:** ftp access or _**even better**_ [GitHubUpdater CI](https://medium.com/@limikael/continuous-integration-for-wordpress-d152ec4852e5) (and wordpress..)

---

#### more info at [wordpress-git/wiki](https://github.com/Raruto/wordpress-git/wiki)

---

## Contribution

 You can fork it and submit your change with a pull request !
