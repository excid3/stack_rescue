# StackRescue

A gem for Rails 3 and 4 to automatically search Google for exceptions raised in your Rails applications.

After installing, you should see output like this in your Rails logs. This doesn't interfere with [better_errors](https://github.com/charliesome/better_errors) either!

![stack_rescue](http://cl.ly/W6d3/Screen%20Shot%202014-06-16%20at%205.19.24%20PM.png)

## Installation

Add this line to your application's Gemfile:

    gem 'stack_rescue', group: :development

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stack_rescue

## Usage

By default, search results are limited to 5 results and only from stackoverflow.com.

If you need to modify either of these, add the following to your
`config/environments/development.rb` file:

```ruby
  # Get results from any website
  config.stack_rescue.site = nil

  # Get results from only stackoverflow.com (default)
  # config.stack_rescue.site = "stackoverflow.com"

  # Change the number of results returned
  # config.stack_rescue.number_of_results = 3
```

## Contributing

1. Fork it ( https://github.com/excid3/stack_rescue/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## TODO

* Use `number_of_results` option to request more pages of results at
  query time
* All around usability improvements
* It would be nice to have these results print after the stacktrace
