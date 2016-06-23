$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'rubygems'
require 'htmlentities'
require 'unicode'
require 'uniconvert/version'

Dir['lib/uniconvert/converters/*'].each do |f|
    require_relative "../#{f}"
end

require 'uniconvert'

require 'minitest/autorun'
