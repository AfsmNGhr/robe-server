require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new do |t|
  t.verbose = false
  t.fail_on_error = false
end

RSpec::Core::RakeTask.new(:spec)
task default: :spec
