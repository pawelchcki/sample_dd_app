if defined?(Datadog)
    Datadog.configure do |d|
        d.use :rails,
            enabled: true,
            auto_instrument: true,
            auto_instrument_redis: true,
            service_name: 'Aaga',
            # controller_service: 'B',
            database_service: 'C',
            cache_service: 'D',
            tags: { 'dyno' => 'dyno' }

            d.use :resque, workers: [TestJob]

            d.use :sidekiq, service_name: 'E'
      
            d.use :aws
        
            d.use :dalli
        
            d.use :http
        
            d.use :redis
        
            SERVICE_MAPPING = {
                /^ServiceA::/ => 'service_a',
                /^ServiceB::/ => 'service_b',
                /^ServiceC::/ => 'service_c',
                /^ServiceD::/ => 'service_d'
            }
            processor = Datadog::Pipeline::SpanProcessor.new do |span|
                if span.service == 'B'
                    SERVICE_MAPPING.any? do |pattern, service_suffix|
                        if span.resource =~ pattern
                            span.service = "APP-#{service_suffix}"
                            true
                        end
                    end
                end
            end

            Datadog::Pipeline.before_flush(processor)
    end

    require 'ddtrace/version'
    puts Datadog::VERSION::STRING if defined?(Datadog::VERSION::STRING)
end
