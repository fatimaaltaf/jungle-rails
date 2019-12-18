# 🌴 Jungle 🌴

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. I built this project using Ruby on Rails, PostgreSQL, Rspec, Stripe and ActiveRecord.

🔎 Here's a sneak-peek of what Jungle looks like: 🔍

<b>Login</b>

!["Login"](https://github.com/fatimaaltaf/jungle-rails/blob/master/public/readme_gifs/login_page.gif)

<b>Overview of app</b>

!["Overview of app"](https://github.com/fatimaaltaf/jungle-rails/blob/master/public/readme_gifs/overview_of_site.gif)

<b>Adding to cart</b>

!["Adding to cart"](https://github.com/fatimaaltaf/jungle-rails/blob/master/public/readme_gifs/adding-item-to-cart.gif)


## 💻 Setup 💻

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## 💳 Stripe Testing 💳

Use Credit Card # 4242 4242 4242 4242 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## ⬆️ Dependencies ⬆️

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
