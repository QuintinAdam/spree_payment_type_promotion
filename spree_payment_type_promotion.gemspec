# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_payment_type_promotion'
  s.version     = '3.0.0'
  s.summary     = 'Spree 3.0.0+ extension for creating a new promotion for picking a payment method.'
  s.description = s.summary
  s.required_ruby_version = '>= 2.1.0'

  s.author    = 'QuintinAdam'
  s.email     = 'QuintinJAdam@gamil.com'
  s.homepage  = 'https://github.com/QuintinAdam/spree_payment_type_promotion'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '~> 3.0.0'

  s.add_dependency 'spree_core', spree_version

  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.1'
  s.add_development_dependency 'sass-rails', '~> 5.0.0.beta1'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'launchy'
  # s.add_development_dependency 'pry'
  # s.add_development_dependency 'better_errors'
  # s.add_development_dependency 'binding_of_caller'
  # s.add_development_dependency 'xray-rails'
end
