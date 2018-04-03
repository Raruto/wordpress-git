# wordpress-git

This is simple a skeleton repo for managing a WordPress site using: **composer**, **git**

## Getting Started

1. Create a new local wordpress installation as usual (eg through [MAMP](https://www.mamp.info/))
2. Clone this repo within the wordpress root installation folder (eg through [GitHub Desktop](https://desktop.github.com/) and/or [Atom.io](https://atom.io/))
5. Add to the **composer.json** file all of the wordpress plugins and themes (eg from [wpackagist](http://wpackagist.org/)) that might be required in this wordpress installation
3. Run `composer install` or `composer update` within the wordpress installation folder.
4. Add your custom theme and plugins into `wp-content/themes` and `wp-content/plugins`
6. Add to the **.gitignore** file all of your custom plugins/themes that you want to keep under git control (add `!wp-content/plugins/my-plugin-name` for a custom plugin and `!wp-content/themes/my-theme-name` for a custom theme)
7. Happy coding...

### Requirements
**localhost:** composer, git (and wordpress..)

**live server:** ftp access (and wordpress..) (or even better [GitHubUpdater Continuous Integration](https://medium.com/@limikael/continuous-integration-for-wordpress-d152ec4852e5) setted)


## Contribution

 You can fork it and submit your change with a pull request on develop branch !
