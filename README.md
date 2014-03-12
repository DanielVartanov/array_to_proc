# Array#to_proc

Technically this gem adds `#to_proc` method to `Array`, which works similarly to [Symbol#to_proc](http://www.ruby-doc.org/core-2.1.0/Symbol.html#method-i-to_proc), but calls provided methods in sequence.

Effectively it allows one to pass an array of sequentially called method symbols as a block, like this:

    users.map &[:created_at, :utc]

instead of

    users.map(&:created_at).map(&:utc)

or

    users.map { |user| user.created_at.utc }


## Installation

Add this line to your application's Gemfile:

    gem 'array_to_proc', require: 'array/to_proc'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install array_to_proc


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
