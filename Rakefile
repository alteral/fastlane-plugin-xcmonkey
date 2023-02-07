require 'bundler/gem_tasks'
require 'rubocop/rake_task'

RuboCop::RakeTask.new(:rubocop)

desc 'Run Fasterer'
task :fasterer do
  sh('bundle exec fasterer')
end

task(default: [:rubocop, :fasterer])
