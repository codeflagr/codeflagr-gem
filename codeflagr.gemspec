$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "codeflagr/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "codeflagr"
  s.version     = Codeflagr::VERSION
  s.authors     = ["Codeflagr"]
  s.email       = ["team@codeflagr.com"]
  s.homepage    = "http://www.codeflagr.com"
  s.summary     = "Summary of Codeflagr."
  s.description = "Description of Codeflagr."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.2"

  s.add_development_dependency "sqlite3"
end
