# wordpress-skeleton

This is simple a skeleton repo for managing a WordPress using: **composer**, **git**

## Getting Started

1. Create a new local wordpress installation as usual (eg through [MAMP](https://www.mamp.info/))
2. Clone this repo within the wordpress installation folder (eg through [GitHub Desktop](https://desktop.github.com/))
5. Add to the **composer.json** file all of the wordpress plugins and themes (eg from [wpackagist](http://wpackagist.org/)) dependencies that might be required in this wordpress installation
3. Run `composer install` or `composer update` within the wordpress installation folder.
4. Add your custom theme and plugins into `public/content/themes` and `public/content/plugins`
6. Add to the **.gitignore** file all of your custom plugins/themes that you want to keep under git control (add `!wp-content/plugins/my-plugin-name` for a custom plugin and `!wp-content/themes/my-theme-name` for a custom theme)
7. Happy coding...

### Requirements
**localhost:** composer, git (and wordpress..)

**live:** ftp access (and wordpress..)


## Contribution

 You can fork it and submit your change with a pull request on develop branch !
