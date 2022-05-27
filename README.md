# SpecinfraTermux

The `specinfra_termux` gem extends specinfra gem to support Termux Android terminal.

## Installation

This gems depends of `specinfra` gem.

Install the gem and add to the application's Gemfile by executing:

    $ bundle add specinfra_termux

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install specinfra_termux

## Usage

Add `specinfra_termux` to you recipe:

```ruby
#!/usr/bin/env ruby


require "dotenv/load"
require "specinfra_termux"

# including recipes
include_recipe "../cookbooks/ssh"
include_recipe "../cookbooks/packages"
include_recipe "../cookbooks/anyenv"
include_recipe "../cookbooks/dotfiles"
include_recipe "../cookbooks/termux"
include_recipe "../cookbooks/neovim"
include_recipe "../cookbooks/heroku"

```

Now you can user `itamae` to configure your termux environment! =)

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dvinciguerra/specinfra_termux. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/dvinciguerra/specinfra_termux/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SpecinfraTermux project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/dvinciguerra/specinfra_termux/blob/main/CODE_OF_CONDUCT.md).
