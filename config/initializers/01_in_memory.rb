Rails.application.config.after_initialize do
    puts "creating sqlite in memory database"
    load "#{Rails.root}/db/schema.rb"
end