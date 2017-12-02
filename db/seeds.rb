# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all
Tag.destroy_all

project_list = [
  ['Portland Rent Tracker','2017-10-05','The Portland Rent tracker scraped data from craigslist to determine best valued deals in each quadrant and statistics about the area.','https://raw.githubusercontent.com/hal2814/portland-rental-price-tracker/master/public/img/screen.png'],
  ['Haiku Checker','2017-10-12','The Haiku Checker allows you to make a Haiku poem on three lines then determine if your poem has the correct amount of syllables. If it does not it will tell you which line and how many syllables it has currently.','https://raw.githubusercontent.com/hal2814/haiku-checker/master/img/screen1.png'],
  ['Food delivery Service Manager','2017-11-9','An application that manages a food delivery business and clients','https://raw.githubusercontent.com/hal2814/food-delivery/master/resources/images/HomePage.png']
]

project_list.each do |x|
  Project.create!(name: x[0],
                  date: x[1],
                  description: x[2],
                  image: x[3])
end

p "Created #{Project.count} projects"
