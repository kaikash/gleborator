# Gleborator

It is velosiped of draper gem created by Gleb Vishnevsky.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gleborator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gleborator

## Usage

You have to call decorate method on what you want to decorate
```ruby
# app/controllers/posts_controller.rb
def show
  @post = Post.find(params[:id]).decorate
end
```

It will search for PostDecorator and create instance of it. There you can create your own methods to keep your views cleaner.

```ruby
# app/decorators/post_decorator.rb
class PostDecorator < ApplicationDecorator
  delegate :id, :title, :body
  delegate :name, to: :author, prefix: true

  def title_with_author_name
    "#{object.title} (#{object.author_name)})"
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kaikash/gleborator.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

