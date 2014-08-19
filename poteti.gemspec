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

  s.add_dependency 'rails', '>= 4.0.0'
  s.add_dependency 'slim'
  s.add_dependency 'devise'
  s.add_dependency 'activeadmin'

  s.add_development_dependency 'pg'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'coveralls'
end
