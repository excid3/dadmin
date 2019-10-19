$LOAD_PATH.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "madmin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "madmin"
  spec.version     = Madmin::VERSION
  spec.authors     = ["Jason Charnes", "Chris Oliver", "Andrew Fomera"]
  spec.email       = ["jason@thecharnes.com", "excid3@gmail.com", "andrew@zerlex.net"]
  spec.homepage    = "https://madmin.jasoncharnes.com"
  spec.summary     = "Administration for Rails"
  spec.description = "Administration for Rails"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 5.2"
  spec.add_dependency "pagy", ">= 3.5"

  spec.add_development_dependency "pry-rails"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "sqlite3", "~> 1.4"
  spec.add_development_dependency "standardrb"
  spec.add_development_dependency "web-console"
end
