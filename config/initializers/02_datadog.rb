Datadog.configure do |d|
    d.use :rails
end

# Datadog::Pipeline.before_flush do |trace|
#     puts "ehllo"
# end


# Datadog.tracer.trace('database.query') do
    
# end
