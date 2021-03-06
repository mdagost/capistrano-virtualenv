# -*- encoding: utf-8 -*-
require File.expand_path('../lib/capistrano-virtualenv/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Yamashita Yuu"]
  gem.email         = ["yamashita@geishatokyo.com"]
  gem.description   = %q{a capistrano recipe to deploy python apps with virtualenv.}
  gem.summary       = %q{a capistrano recipe to deploy python apps with virtualenv.}
  gem.homepage      = "https://github.com/yyuu/capistrano-virtualenv"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "capistrano-virtualenv"
  gem.require_paths = ["lib"]
  gem.version       = Capistrano::Virtualenv::VERSION

  gem.add_dependency("capistrano")
  gem.add_dependency("capistrano-file-transfer-ext", "~> 0.0.3")
end
