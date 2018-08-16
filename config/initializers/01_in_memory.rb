Rails.application.config.after_initialize do
    puts "creating sqlite in memory database"
    begin
    load "#{Rails.root}/db/schema.rb"
    rescue
    end
    puts "populating db"

    1_000.times do |i|
       Delayed::Job.create!(handler: i)
    end
end
