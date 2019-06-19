$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_change_password/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_change_password"
  s.version     = RailsAdminChangePassword::VERSION
  s.authors     = ["Francesco Rigotti"]
  s.email       = ["francesco.rigotti@luganonetwork.ch"]
  s.homepage    = ""
  s.summary     = ": Summary of RailsAdminChangePassword."
  s.description = ": Description of RailsAdminChangePassword."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails_admin", "~> 1"
end
