class TestJob
    @queue = :test_job
  
    def self.perform
      # Kernel.sleep(2)
      10.times do 
        Thread.start do
          1000.times do
            span = Datadog.tracer.trace('hir.me')
            span.finish
          end
        end
      end
      puts 'done' + Process.pid.to_s
    end
  end
