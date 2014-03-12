lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'array/to_proc'

RSpec.configure do |config|
  config.mock_framework = :rspec
end
