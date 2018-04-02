# wordpress-skeleton

This is simple a skeleton repo for managing a WordPress using: **composer**, **git**

## Getting Started

1. Create a new local wordpress installation as usual.
2. Clone this repo within the wordpress installation folder
3. Use `composer install` cmd and follow the onscreen instructions to add your config settings.
4. Add your theme into `public/content/themes`
5. Add any required plugins, from their [wpackagist](http://wpackagist.org/) packages or by adding your custom plugins into `public/content/plugins`
6. Launch your local server
7. Happy coding...


#### Development

**> Get wordpress and packages**

``` composer install ``` or ``` composer update ```

#### Production

**> Get wordpress and packages and optimize composer**

```
composer install --no-dev --prefer-dist --no-interaction --optimize-autoloader
```

**> Send to your prod server via FTP or with your favorite deployment tool :thumbsup:**

## Contribution

 You can fork it and submit your change with a pull request on develop branch !
