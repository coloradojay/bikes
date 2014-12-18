# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bikes = Bike.create([
	{name: "Super dope bike", type: "Yazuki", speed: 10 },
	{name: "Kinda dope bike", type: "Yamaha", speed: 8}
	])