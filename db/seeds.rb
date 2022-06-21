# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "tom", email: "cclemon3002@yahoo.co.jp", password: "abcdefg1", image: File.open('app/assets/images/AdobeStock_213713637-1-scaled.webp'))
