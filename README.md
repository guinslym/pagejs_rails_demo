# Rails Page.js Demo


## Installation

	rake db:create db:migrate db:seed
	rails s


### Configuration
app/assets/javascript/application.js

	//= require page

config/initializers/assets.rb
	Rails.application.config.assets.precompile += %w( page.js )

And then execute:

  $ bundle


## Usage


## Contributing

1. Fork it ( https://github.com/[my-github-username]/pagejs_rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
