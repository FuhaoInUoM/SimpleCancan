# SimpleCancan

SimpleCancan is an awesome version from cancan designed for Padrino.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_cancan'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_cancan

## Usage

SimpleCancan expects a current_account method to exist in the controller.

###1.Define Abilities

Create a new file named ability.rb in your models, here is the example:

	class Ability
	  include SimpleCancan::Ability

	  def initialize(account)

	    account ||= Account.new
	    
	    case account.role
	    when "admin"
	    	can :manage, :all
	    when "editor"
	    	can :write, Article
	    ...
	    end
	  end
	end
More details please go to https://github.com/ryanb/cancan/wiki/defining-abilities.

###2.Include controller additions in your related app file, here is the example:
	
  	class App < Padrino::Application
  		include SimpleCancan::ControllerAdditions
  		......
  	end

###3.Use defined abilities in specific controllers:
	
	ProjectName::App.controllers :posts do

		get :compose do
	    	if can? :write, Article.first
	    		......
	    	else
	    		......
	    	end
	  	end

	end
More details please go to https://github.com/ryanb/cancan/wiki/checking-abilities

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/FuhaoInUoM/simple_cancan.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

