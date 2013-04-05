usamap
======

Create a svg map of the USA using ruby

## Installation

  gem install usamap


## Usage

~~~.ruby
require 'usamap'

colors = {}
colors[0..5] = '#CD5C5C'
colors[6..100] = 'blue'

stats = {}
stats['35001'] = 3  # 35001 is FIPS for Bernalillo, NM
stats['35049'] = 99 # 35049 is FIPS for Santa Fe, NM

my_map = USAmap.new(stats, colors)
puts my_map
~~~

## Credits
SVG Map:
http://commons.wikimedia.org/wiki/File:Usa_counties_large.svg


FIPS Codes:
http://en.wikipedia.org/wiki/FIPS_county_code

