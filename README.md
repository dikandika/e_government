## Installation

``` bash

# go into app's directory
$ cd e-government

# install app's dependencies
$ composer install

# install app's dependencies
$ npm install

```

### If you choice to use MySQL

Copy file ".env.example", and change its name to ".env".
Then in file ".env" complete this database configuration:
* DB_CONNECTION=mysql
* DB_HOST=127.0.0.1
* DB_PORT=3306
* DB_DATABASE=e_government
* DB_USERNAME=root
* DB_PASSWORD=

### Set APP_URL

> If your project url looks like: localhost:8000 
Then go to `e-government/.env`
And modify this line:

* APP_URL = 

To make it look like this:

* APP_URL = http://localhost:8000


### Next step

``` bash
# in your app directory
# generate laravel APP_KEY
$ php artisan key:generate

# run database migration and seed
$ php artisan migrate:refresh --seed

# generate mixing
$ npm run dev

# and repeat generate mixing
$ npm run dev
```

## Usage

``` bash
# start local server
$ php artisan serve

# test
$ php vendor/bin/phpunit
```

Open your browser with address: [localhost:8000](localhost:8000)  
Click "Login" on sidebar menu and log in with credentials:

* E-mail: _admin@admin.com_
* Password: _password_

This user has roles: _user_ and _admin_

--- 

Based on [CoreUI Free Laravel Admin Template](https://github.com/coreui/coreui-free-laravel-admin-template)