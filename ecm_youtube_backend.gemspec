$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'ecm/youtube/backend/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'ecm_youtube_backend'
  s.version     = Ecm::Youtube::Backend::VERSION
  s.authors     = ['Roberto Vasquez Angel']
  s.email       = ['roberto@vasquez-angel.de']
  s.homepage    = 'https://github.com/robotex82/ecm_youtube_backend'
  s.summary     = 'Backend for ECM Youtube Module'
  s.description = 'Backend for ECM Youtube Module'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '>= 4.0'
  s.add_dependency 'ecm_youtube'
  s.add_dependency 'itsf_backend'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rails-dummy'
  s.add_development_dependency 'therubyracer'

  s.add_development_dependency 'guard-bundler'
  s.add_development_dependency 'guard-rails'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'shoulda-matchers'
end
