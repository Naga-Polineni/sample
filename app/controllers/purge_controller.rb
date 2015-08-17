class PurgeController < ApplicationController
  require 'benchmark'
 @@chef = Chef.first
 
 def create(request_params)
    p Benchmark.measure{ @recepie = PurgeToken.new(request_params)}
    
    p Benchmark.measure {@recepie.save}
    
 end

end

purge = PurgeController.new

purge.create(@@che)
