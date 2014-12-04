# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

# @u = User.new
# @u.email = name+"@example.com"
# @u.name = name
# puts @u.save(:validate => false)

# @e = Event.new
# @e.user = @u
# @e.title =  "Rails Decal"
# @e.description = "The Rails DeCal will teach you the skills to create dynamic web applications for any purpose."
# @e.location = "Wurster Hall"
# @e.time = 