# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'browser_conway_game_of_life/version'

Gem::Specification.new do |spec|
  spec.name          = 'browser_conway_game_of_life'
  spec.version       = BrowserConwayGameOfLife::VERSION
  spec.authors       = ['Roman Vakulchik']
  spec.email         = ['roman.vakulchik@gmail.com']
  spec.summary       = 'The Game of Life, also known simply as Life, is a cellular automaton'
  spec.description   = 'This is browser version the Game of Life'
  spec.homepage      = 'https://github.com/randsina/browser_conway_game_of_life'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
