# Rails Page.js Demo

### Description
This is a demo of the `gem 'pagejs_rails'`.
Ceci est une démonstration du gem https://rubygems.org/gems/pagejs_rails

Git clone it And then execute:

  $ bundle

## Installation

	rake db:create db:migrate db:seed
	rails s


### Configuration (already in this folder)
```ruby
#app/assets/javascript/application.js
//= require page
#config/initializers/assets.rb
Rails.application.config.assets.precompile += %w( page.js )
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/pagejs_rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
