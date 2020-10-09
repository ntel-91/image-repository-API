# Image Repository

_Developed by Nick Telenson_

This is the backend API for the Image Repository app. See the [Image Repository frontend](https://github.com/ntel-91/image-repository-client) for more details and previews.

# Getting started

## Set up:

You will need `rails` and `bundle` installed on your computer in order to run this app. You will also need Postgres installed and running in order to create, migrate, and seed your database.

Please clone this repo down onto your local machine and navigate to that directory. Then run `bundle install` in order to install all of the necessary gems.

<!-- ### JWT Secret

You'll need to create your own JWT secret to encode and decode the use authorization. In the root directory, create a `.env` file and add

```ruby
AUTH_SECRET='<secret-password>'
```
(_`<secret-password>`_ can be replaced with whatever you'd like) -->

## Start the server

<!-- Once you've created your `AUTH_SECRET` variable in the .env file -->
Run the following to create the Postgres database:

```rails db:create && rails db:migrate```

Next, to seed your database with a started set of images and user account with the username 'admin' and the password '1234' (very secure 🔐), run: 

```rails db:seed``` 

Finally:

**Start server on port 3000 to communicate with frontend: `rails s -p 3000`**

Then go ahead and follow the instructions to clone and run the [frontend repo](https://github.com/ntel-91/image-repository-client). 
