begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  task default: :spec

  # Clean up the .bak files generated from awk.
  task :clean do
    sh "pwsh -File scripts/clean.ps1"
  end

  # Remove license header in *.rb files.
  task :format do
    sh "pwsh -File scripts/format.ps1"
  end

rescue LoadError
  # no rspec available
end
