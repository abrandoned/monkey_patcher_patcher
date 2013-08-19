# MonkeyPatcherPatcher

MonkeyPatcherPatcher patches monkey patches on your code, it's your code!!!!

(but seriously don't ever use this)

## Installation

Add this line to your application's Gemfile:

    gem 'monkey_patcher_patcher'

Or install it yourself as:

    $ gem install monkey_patcher_patcher

## Usage

You want to write poor code and then someone else comes along and has an unexpected need and you don't want it to be met
(and/or you don't want to pull in their pull requests)

Instead of allowing a monkey patcher to patch your code you can use MonkeyPatcherPatcher

Your methods won't change from your definitions!!!!!

```ruby
  class Hello
    include MonkeyPatcherPatcher

    def hello
      puts "hello"
    end

    monkey_patcher_patcher :hello
  end

  hello = Hello.new
  hello.hello # => "hello"

  # Some monkey patcher comes along and patches your code!!!!
  class Hello
    def hello
      puts "not hello at all"
    end
  end

  hello = Hello.new
  hello.hello # => "hello"

  # Huzzah!! we have conquered the patchers (sometimes, maybe, and only if they aren't very good)
```

AGAIN - DON'T USE THIS

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
