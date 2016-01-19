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

### No.

--

Rails gets you: Reloading, Dev/Test modes, Logging, Security, Param Parsing, Conditional GETs, Caching, HEAD requests, Resource (REST) Routing, URL Generation, Header & Redirection responses, Instrumentation, Generators, Billions of plugins, connecting to your database...

--

You _could_ do all of that yourself, but...

![wrote my own crypto](wrote_own_crypto.gif)

---

# Attributes API


---

# ActiveRecord Improvements

## ApplicationRecord

All generated models will now descend from `ApplicationRecord` instead of
`ActiveRecord::Base`. This provides a nice place to put extensions vs monkey
patching AR Base:

```ruby
# ./app/models/book.rb
class Book < ApplicationRecord
end

# ./app/models/application_record.rb
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
```

---

# Other ActiveRecord improvements

- `ActiveRecord::Relation#in_batches`
    - executes block in chunks 
- `Post.where(id: 1).or(Post.where(id: 2))`
    - `#or` takes any relation/scope as an arg
- `has_secure_token` 
    - For... whatever you may need a token for!

---

# Turbolinks 5... er, 3, er... 2.5.3?

- Still a work in progress.
- TL 3 builds on work done by Shopify when [they abandoned Javascript MVC](https://engineering.shopify.com/17489056-rebuilding-the-shopify-admin-improving-developer-productivity-by-deleting-28-000-lines-of-javascript) (batman.js)
- TL 5 is a rewrite of TL 2.5.3 that incorporates _some_ of TL3 and adds
  important hooks for quasi-native iOS and Android apps.
    - ...but it may not include things like _partial replacement_ in favor of
    doing those things via XHR (or ActionCable). This will probably be
    re-added later.
    - Slated for release with Rails 5; [tracking
      here](https://github.com/rails/turbolinks/issues/628)

.right[![holy hand grenade](holy-hand-grenade-of-antioch.jpg)]

---

# ActionCable

Easy to use Web Sockets framework for Rails apps.

- https://github.com/rails/rails/blob/master/actioncable/README.md
- https://github.com/rails/actioncable-examples

_...special guest..._

--

- DHH: [Build a chat app in 5* minutes!](https://youtu.be/n0WUjGkDFS0)

--

.footnote[_ * actually about 17 minutes_]

--

- [Text
summary](http://hectorperezarenas.com/2015/12/26/rails-5-tutorial-how-to-create-a-chat-with-action-cable/) of video.
- [The sauce](https://github.com/HectorPerez/chat-in-rails5)

---

# SPEED!

- 


.center[![warp speed cat](warp_speed_cat.gif)]

---

# Misc...

- `Integer#positive?` and `Integer#negative?`
- `Date` and `DateTime` gain: `#prev_weekday, `#next_weekday, `#weekend?`

- `ActionController::Renderer` - render arbitrary templates without being
  inside a controller action:
```ruby
irb> BooksController.renderer.render :index, assigns: { books: Book.all }
  Book Load (0.0ms)  SELECT "books".* FROM "books"
  Rendered books/index.html.erb within layouts/application (1.1ms)
=> "<!DOCTYPE html>\n<html>\n  <head>\n    <title>All Books</title>\n
...
```

---

# Thanks

## Resources:

- [Remark.js](https://github.com/gnab/remark) - cool markdown-to-html presentation tool
