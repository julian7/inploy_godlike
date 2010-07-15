require File.expand_path("../lib/inploy/servers/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "inploy_godlike"
  s.version     = Inploy::Servers::Godlike::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Balazs Nagy"]
  s.email       = ["julsevern@gmail.com"]
  s.homepage    = "http://github.com/julian7/inploy_godlike"
  s.summary     = "Manage god instances with inploy"
  s.description = "Manage deployed services through god service monitoring system"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "inploy_godlike"
  s.add_dependency "inploy", ">= 1.6.3"
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'
end