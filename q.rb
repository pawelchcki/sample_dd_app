#!/usr/bin/env ruby
require File.expand_path('../config/environment', __FILE__)

loop do
   start = Time.now.to_f
   start_c = Resque.queue_sizes['test_job']
   sleep(5)
   delta = Time.now.to_f - start
   delta_c = start_c - Resque.queue_sizes['test_job']
   STDERR.puts delta_c/delta
end
