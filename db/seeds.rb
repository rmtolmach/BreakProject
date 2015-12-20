# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
gem 'csv'

CSV.read("./seeds_csvs/Activities.csv").map do |row|
  Activity.create(id: row[0], name: row[1], category: row[2], subcategory: row[3], description: row[4], sunday_morning: row[5], sunday_afternoon: row[6], sunday_evening: row[7], monday_morning: row[8], monday_afternoon: row[9], monday_evening: row[10], tuesday_morning: row[11], tuesday_afternoon: row[12], tuesday_evening: row[13], wednesday_morning: row[14], wednesday_afternoon: row[15], wednesday_evening: row[16], thursday_morning: row[17], thursday_afternoon: row[18], thursday_evening: row[19], friday_morning: row[20], friday_afternoon: row[21], friday_evening: row[22], saturday_morning: row[23], saturday_afternoon: row[24], saturday_evening: row[25], website: row[26], price_range: row[27], neighborhood_id: row[28], minutes_from_ada: row[29], method: row[30], address: row[31], city: row[32], state: row[33], country: row[34], zip: row[35])
end

CSV.read("./seeds_csvs/Neighborhoods.csv").map do |row|
  Neighborhood.create(id: row[0], name: row[1], description: row[2])
end
