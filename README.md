# wordpress-git

This is a simple skeleton repo for managing a WordPress site using: **wp-cli**, **composer**, **git**

## Getting Started

1. Clone this repo within the local web root folder (eg through [GitHub Desktop](https://desktop.github.com/)/[Atom.io](https://atom.io/) and [MAMP](https://www.mamp.info/)).
2. **NB** Rename the cloned folder (_wordpress-git_) to something more friendly (eg _site-name_).
3. Add to the **composer.json** file all of the wordpress plugins and themes (eg from [wpackagist](http://wpackagist.org/)) that might be required in this wordpress installation.
4. Run `wp core`within this folder to install wordpress.
5. Run `composer install` or `composer update` within the same folder to install any required plugin/theme.
6. Happy coding...

### remember to...
- Add your custom theme/plugins into `wp-content/themes` and `wp-content/plugins`.
- Add to the **.gitignore** file all of your custom plugins/themes that you want to keep under git control (add `!wp-content/plugins/my-plugin-name` for a custom plugin and `!wp-content/themes/my-theme-name` for a custom theme).
- Add to the **composer.json** file all of the wordpress plugins and themes that will be required in this wordpress installation.

### Requirements
**localhost:** wp-cli, composer, git (and wordpress..)

**live server:** ftp access (and wordpress..) (or even better [GitHubUpdater Continuous Integration](https://medium.com/@limikael/continuous-integration-for-wordpress-d152ec4852e5) setted)

<br>

**Install tips:** [WP-CLI](https://make.wordpress.org/cli/handbook/installing/), [Composer](https://getcomposer.org/doc/00-intro.md)

## Contribution

 You can fork it and submit your change with a pull request on develop branch !

