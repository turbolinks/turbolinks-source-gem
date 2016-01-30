require File.expand_path('../lib/turbolinks/source/version', __FILE__)

Gem::Specification.new do |s|
  s.name     = 'turbolinks-source'
  s.version  = Turbolinks::Source::VERSION
  s.author   = 'Sam Stephenson'
  s.email    = 'sstephenson@gmail.com'
  s.license  = 'MIT'
  s.homepage = 'https://github.com/turbolinks/turbolinks-source-gem'
  s.summary  = 'Turbolinks JavaScript assets'
  s.files    = Dir["lib/turbolinks/source.rb", "lib/assets/javascripts/*", "README.md", "LICENSE"]
end
