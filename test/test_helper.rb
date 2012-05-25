ENV["RAILS_ENV"] = "test"

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'shoulda'
require 'factory_girl'

FactoryGirl.definition_file_paths = [ File.join(Rails.root, 'test', 'factories') ]
#FactoryGirl.find_definitions