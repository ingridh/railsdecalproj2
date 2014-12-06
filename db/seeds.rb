# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

@u = User.new
@u.email = "newuser@email.com"
@u.name = "Ingrid"
@u.save
puts @u.email

@e = Event.new
@e.user_id = @u.id
@e.title =  "Rails Decal"
@e.description = "The Rails DeCal will teach you the skills to create dynamic web applications for any purpose."
@e.location = "Wurster Hall"
@e.time = "7:00pm-9:00pm"
@e.date = "12/04/14"
@e.save
puts @e.title


@e = Event.new
@e.user_id = @u.id
@e.title =  "Ice Skating"
@e.description = "Ice skate in SF and enjoy the holiday decorations in the city."
@e.location = "Union Square"
@e.time = "7:00pm-10:00pm"
@e.date = "12/20/14"
@e.save
puts @e.title