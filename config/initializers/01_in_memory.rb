Rails.application.config.after_initialize do
    puts "creating sqlite in memory database"
    load "#{Rails.root}/db/schema.rb"

    puts "populating db"

    10_000.times do |i|
        Delayed::Job.create!(handler: i)
    end
end