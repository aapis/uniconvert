$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'rubygems'
require 'htmlentities'
require 'unicode'
require 'uniconvert/version'

require_relative "../lib/uniconvert/setup.rb"
require_relative "../lib/uniconvert.rb"

setup = Uniconvert::Setup.new
setup.load_converters

require 'minitest/autorun'
