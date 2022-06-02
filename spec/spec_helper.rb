require File.expand_path("../../config/environment", __FILE__)
require 'support/controller_helpers'
require 'devise'
require 'rails/all'

RSpec.configure do |config|
    config.include Devise::Test::IntegrationHelpers, :type => :controller
end
