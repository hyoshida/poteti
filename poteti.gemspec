$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'poteti/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'poteti'
  s.version     = Poteti::VERSION
  s.authors     = ['YOSHIDA Hiroki']
  s.email       = ['hyoshida@appirits.com']
  s.homepage    = 'https://github.com/hyoshida/poteti#poteti'
  s.summary     = 'TODO: Summary of Poteti.'
  s.description = 'TODO: Description of Poteti.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 4.1.4'
  s.add_dependency 'slim'

  s.add_development_dependency 'pg'
  s.add_development_dependency 'rubocop'
end
