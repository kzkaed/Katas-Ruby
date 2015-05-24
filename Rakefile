require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |task|
  task.pattern = Dir.glob('spec/**/*_spec.rb')
  #task.rspec_opts = '--format documentation'
end

desc 'Run each spec individually. This helps to discover missing requires.'
task :individual_specs do
  Dir['spec/**/*_spec.rb'].each do |spec|
    sh "bundle exec rspec #{spec}"
  end
end

task :default => :spec