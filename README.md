# Guard::Rubybeautify

A guard to automatically beautify ruby files in a project.

## Installation

Please be sure to have [Guard](https://github.com/guard/guard) installed before continuing.

Add this line to your application's Gemfile:

```ruby
gem 'guard-rubybeautify'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install guard-rubybeautify

## Usage

Add a guardfile entry:

```ruby
guard :rubybeautify do
	watch(%r{lib/.+\.rb})
end
```

or call

  $ guard init rubybeautify

to have a section added automatically.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/guard-rubybeautify/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
