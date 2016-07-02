$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "codeflagr/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "codeflagr"
  s.version     = Codeflagr::VERSION
  s.authors     = ["FlorianBoulay"]
  s.email       = ["florianboulay28@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Codeflagr."
  s.description = "TODO: Description of Codeflagr."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.2"

  s.add_development_dependency "sqlite3"
end
