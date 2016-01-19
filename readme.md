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


## Commands run via `rails` vs `rake`

- Slightly less confusion, especially for new users
- You can still use `rake` if you'd prefer.

## Why Ruby 2.2+?

- Symbols are now garbage collected
- Plus... why not?
- (show `webscale_symbols.rb`)

