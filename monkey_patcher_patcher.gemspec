# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'monkey_patcher_patcher/version'

Gem::Specification.new do |gem|
  gem.name          = "monkey_patcher_patcher"
  gem.version       = MonkeyPatcherPatcher::VERSION
  gem.authors       = ["Brandon Dewitt"]
  gem.email         = ["brandonsdewitt+monkey_patcher_patcher@gmail.com"]
  gem.description   = %q{ Don't ever use this, but sometimes you want to just use it }
  gem.summary       = %q{ MonkeyPatcherPatcher Patches Monkey Patches in your Ruby Code }
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
end
