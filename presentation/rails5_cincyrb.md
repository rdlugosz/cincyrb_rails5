class: center, middle

# Shiny things in RAILS 5


## cincy.rb 19jan2016
### ryan dlugosz -- @lbwski

---

## Installing the beta

```shell
$ gem install rails --pre
$ rails new luftwaffles --database=postgresql
```

To run off master:
```ruby
# Gemfile
gem 'rails', github: "rails/rails"
```

_Note: you must be running Ruby 2.2.2+_

- http://railsdiff.org/4.2.5/5.0.0.beta1

---

## Why Ruby 2.2+?

- Symbols are now garbage collected
- Plus... why not?

_(show `webscale_symbols.rb`)_

---

## Commands run via `rails` vs `rake`

- Slightly less confusion, especially for new users
- You can still use `rake` if you'd prefer.

---

## Rails API

- For rofl-scale projects who want micro-service architecture
- Backend for mobile apps, etc.

```shell
$ rails new my_api_app --api
```
- Merge of https://github.com/rails-api/rails-api
- Changes: No views, assets, helpers, cookies, CSRF
- Controllers inherit from `ActionController::API`

---

## Shouldn't I just use Sinatra?

--

No.

--

Rails gets you: Reloading, Dev/Test modes, Logging, Security, Param Parsing, Conditional GETs, Caching, HEAD requests, Resource (REST) Routing, URL Generation, Header & Redirection responses, Instrumentation, Generators, Billions of plugins, connecting to your database...

You _could_ do all of that yourself, but...

