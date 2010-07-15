require "bundler"
Bundler.setup

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec)

gemname = 'inploy_godlike'
gemspecfname = "#{gemname}.gemspec"
gemspec = eval(File.read(gemspecfname))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + [gemspecfname] do
  system "gem build #{gemspecfname}"
  system "gem install #{gemname}-#{Inploy::Servers::Godlike::VERSION}.gem"
end