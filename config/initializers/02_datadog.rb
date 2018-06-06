if defined?(Datadog)
    Datadog.configure do |d|
        d.use :rails
    end

    require 'ddtrace/version'
    puts Datadog::VERSION::STRING if defined?(Datadog::VERSION::STRING)
end
