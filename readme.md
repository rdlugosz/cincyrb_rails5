# Shiny things in Rails 5


## Installing the beta

```
$ gem install rails --pre
$ rails new luftwaffles --database=postgresql
```

To run off master:
```
# Gemfile
gem 'rails', github: "rails/rails"
```

_Note: you must be running Ruby 2.2.2+_


## Why Ruby 2.2+?

- Symbols are now garbage collected
- Plus... why not?
- (show `webscale_symbols.rb`)


## Commands run via `rails` vs `rake`

- Slightly less confusion, especially for new users
- You can still use `rake` if you'd prefer.


## Rails API

- For rofl-scale projects who want micro-service architecture
- Backend for mobile apps, etc.

```
$ rails new my_api_app --api
```
- Merge of https://github.com/rails-api/rails-api
- Changes:

## Shouldn't I just use Sinatra?

- No.
