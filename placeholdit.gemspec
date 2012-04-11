# -*- encoding: utf-8 -*-
require File.expand_path('../lib/placeholdit/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jeff Mehlhoff"]
  gem.email         = ["jeffmehlhoff@mac.com"]
  gem.description   = %q{A Rails view helper for placeholder images via http://placehold.it}
  gem.summary       = %q{A Rails view helper for placeholder images via http://placehold.it}
  gem.homepage      = "http://github.com/ohokay/placeholdit"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "placeholdit"
  gem.require_paths = ["lib"]
  gem.version       = Placeholdit::VERSION

  gem.add_development_dependency "rspec"

end
