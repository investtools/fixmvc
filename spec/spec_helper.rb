require 'fixmvc/test_helpers'
require 'active_support/dependencies'

RSpec.configure do |config|
  config.include FIXMVC::TestHelpers
  config.before :each do
    ActiveSupport::Dependencies.clear
  end
end
