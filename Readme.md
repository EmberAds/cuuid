# CUUID

This gem is a thin C => Ruby wrapper around the `<uuid/uuid.h>` library that should come with your OS. It's been tested on OS X (10.7+) and Ubuntu (10.04 LTS). It provides one method for you.

## Usage

    CUUID.generate # => "08146761-57BF-46C9-A55B-1B49103AA08B"

Or if you've required `"cuuid/uuid"` then you can just do

    UUID.generate # => "08146761-57BF-46C9-A55B-1B49103AA08B"

## Installation

It'll work out the box on OS X. Ubuntu requires `uuid-dev` apt package installing.

Rubygem install:

    gem install cuuid

Gemfile:

    gem "cuuid"

There's an optional file for compatibility with the [uuid gem](http://rubygems.org/gems/uuid):

    require "cuuid/uuid"

or in your Gemfile:

    gem "cuuid", require: "cuuid/uuid"


## License

See LICENSE
