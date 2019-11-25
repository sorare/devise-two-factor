$:.push File.expand_path('../lib', __FILE__)
require 'devise_two_factor/version'

Gem::Specification.new do |s|
  s.name        = 'devise-two-factor'
  s.version     = DeviseTwoFactor::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']
  s.summary     = 'Barebones two-factor authentication with Devise'
  s.email       = 'engineering@qulture.rocks'
  s.homepage    = 'https://github.com/QultureRocks/devise-two-factor'
  s.description = 'Fork of tinfoilsecurity devise-two-factor'
  s.authors     = ['Shane Wilton', 'Joao Marinho']

  s.files         = `git ls-files`.split("\n").delete_if { |x| x.match('demo/*') }
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ['lib']

  s.add_runtime_dependency 'railties',       '< 6.1'
  s.add_runtime_dependency 'activesupport',  '< 6.1'
  s.add_runtime_dependency 'attr_encrypted', '>= 1.3', '< 4', '!= 2'
  s.add_runtime_dependency 'devise',         '~> 4.0'
  s.add_runtime_dependency 'rotp',           '~> 2.0'

  s.add_development_dependency 'activemodel'
  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'bundler',    '> 1.0'
  s.add_development_dependency 'rspec',      '> 3'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'faker'
  s.add_development_dependency 'timecop'
end
