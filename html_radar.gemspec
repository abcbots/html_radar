$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "html_radar/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "html_radar"
  s.version     = HtmlRadar::VERSION

  s.authors     = ["Dave Makena"]
  s.email       = ["dave@abcbots.com"]
  s.homepage    = "http://www.abcbots.com/robots/2706_html_radar"
  s.summary     = "Outputs URL Content Change."
  s.description = "Scrapes, Remembers, Outputs URL Content Change."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  s.add_dependency "rails", "~> 4.0.1"
  s.add_development_dependency "mysql2"
end
