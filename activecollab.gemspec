# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'activecollab/version'

Gem::Specification.new do |gem|
  gem.name          = "activecollab"
  gem.version       = Activecollab::VERSION
  gem.authors       = ["Nikita Tarasov"]
  gem.email         = ["nikita@mygento.ru"]
  gem.description   = "activecollab 5 api for ruby"
  gem.summary       = "activecollab 5 api for ruby"
  gem.homepage      = "https://github.com/luckyraul/ruby-activecollab.git"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "httparty"
end
