Gem::Specification.new do |s|
  s.name        = 'usamap'
  s.version     = '0.0.2'
  s.date        = '2013-04-16'
  s.summary     = "Map of the USA in svg format. Plot colors via FIPS county coordinates."
  s.description = "Create a colorized svg map of the USA by county using FIPS coordinates"
  s.authors     = ["salemine"]
  s.email       = 'info@salemine.com'
  s.files       = ["lib/usamap.rb", "lib/usa_counties_svg.rb", \
                   "Rakefile", "spec/spec_helper.rb", "spec/usamap/usamap_spec.rb", \
                   "README.md", "LICENSE.txt"]
  s.add_development_dependency 'rspec', '2.13.0'  
  s.homepage    = 'https://github.com/salemine/usamap'
  s.license     = "MIT"
end

