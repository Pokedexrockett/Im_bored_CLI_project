# ImBoredCliProject

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/im_bored_cli_project`. To experiment with that code, run `bin/console` for an interactive prompt.

I'm bored is a ruby GEM that allows you to create random events based on type, participants, or completely random. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'im_bored_cli_project'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install im_bored_cli_project

## Usage

# http://www.boredapi.com/api/activity/ # Find an event totally randomly
# http://www.boredapi.com/api/activity?key=:key # Find an event based on key
# A unique numeric id [1000000, 9999999]
# http://www.boredapi.com/api/activity?type=:type # Find a random event with a given type
# Type of the activity ["education", "recreational", "social", "diy", "charity", "cooking", "relaxation", "music", "busywork"]
# http://www.boredapi.com/api/activity?participants=:participants # Find a random event with a given number of participants
# The number of people that this activity could involve [0, n]
# http://www.boredapi.com/api/activity?price=:price # Find an event with a specified price
# A factor describing the cost of the event with zero being free [0, 1]
# http://www.boredapi.com/api/activity?accessibility=:accessibility # Find an event with a specified price in an inclusively constrained range
# A factor describing how possible an event is to do with zero being the most accessible [0.0, 1.0]
# http://www.boredapi.com/api/activity?accessibility=1 # Find a price in an inclusively constrained range
# http://www.boredapi.com/api/activity?minaccessibility=:minaccessibility&maxaccessibility=:maxaccessibility # Find an event with a specified accessibility in an inclusively constrained range


activity - Description of the queried activity


accessibility - A factor describing how possible an event is to do with zero being the most accessible [0.0, 1.0]

type - Type of the activity ["education", "recreational", "social", "diy", "charity", "cooking", "relaxation", "music", "busywork"]

participants - The number of people that this activity could involve [0, 5]

price - A factor describing the cost of the event with zero being free [0, 1]

link - helpful link for activity 

key - A unique numeric id [1000000, 9999999]

api.event_by_type("recreational") # returns a recreational event 
api.event_by_random("activity") # returns a random event 
api.event_by_participants(4) # returns an event based on the number of people

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/im_bored_cli_project. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/im_bored_cli_project/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ImBoredCliProject project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/im_bored_cli_project/blob/master/CODE_OF_CONDUCT.md).
