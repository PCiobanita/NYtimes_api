require 'dotenv'
require 'httparty'
require 'json'
require 'date'
require 'time'
require_relative '../lib/NYTimesio'
Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
end

