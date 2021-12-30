require 'rspec'
require 'webdrivers'
require 'selenium/webdriver'
require_relative 'tools/driver'
require_relative 'tools/env'
Dir[File.join(Dir.pwd, 'pages/*.rb')].each { |f| require_relative f }