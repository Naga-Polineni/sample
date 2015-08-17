class PurgeToken < ActiveRecord::Base
  require 'benchmark'
  #binding.pry
  #serialize :field, JSON
  p Benchmark.measure{ serialize :field, JSON}
end
