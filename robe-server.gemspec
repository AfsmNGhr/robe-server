Gem::Specification.new do |gem|
  gem.name = 'robe-server'
  gem.version = '1.0.0'
  gem.authors = 'Phil Hagelberg, Dmitry Gutov, Alexsey Ermolaev'
  gem.email = 'afay.zangetsu@gmail.com'
  gem.homepage = 'https://github.com/AfsmNGhr/robe-server'
  gem.description = 'Server for robe'
  gem.summary = 'Code navigation, documentation lookup and completion for Ruby'
  gem.license = 'GPL3'

  gem.add_development_dependency 'rake', '~> 10.3.0'
  gem.add_development_dependency 'rspec', '~> 2.14'
  gem.add_development_dependency 'simplecov', require: false

  gem.files = `git ls-files`.split("\n")
  gem.require_paths = ['lib']
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})

  gem.extra_rdoc_files = ['LICENSE', 'README.md']
end
