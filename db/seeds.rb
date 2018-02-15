# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Importing manufacturers..."
CSV.foreach(Rails.root.join("manufacturers.csv"), headers: true) do |row|
  Manufacturer.create! do |manufacurer|
    manufacurer.id = row[0]
    manufacurer.name = row[1]
  end
end

puts "Importing models..."
CSV.foreach(Rails.root.join("models.csv"), headers: true) do |row|
  Modell.create! do |modell|
    modell.name = row[0]
    modell.manufacturer_id = row[2]
  end
end
