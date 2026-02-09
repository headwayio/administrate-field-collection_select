# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "administrate-field-collection_select"
  gem.version       = '0.4.0'
  gem.authors       = ['Jon Kinney']
  gem.email         = ['jon@headway.io']

  gem.summary       = %(Custom Administrate field collection_select)
  gem.description   = gem.summary
  gem.homepage      = "http://github.com/headwayio/administrate-field-collection_select"
  gem.license       = 'MIT'

  gem.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  gem.bindir        = 'exe'
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '>= 2.2.33'
  gem.add_development_dependency 'rake', '>= 12.3.3'
  gem.add_development_dependency 'rspec', '~> 3.4'
  gem.add_dependency 'administrate', '>= 0.7', '< 2.0'
  gem.add_dependency 'rails', '>= 6.0'
end
