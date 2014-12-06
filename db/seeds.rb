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
puts @u.name

@e = Event.new
@e.user_id = @u.id
@e.title =  "Ice Skating"
@e.description = "Ice skate in SF and enjoy the holiday decorations in the city."
@e.location = "Union Square"
@e.time = "9:00pm-10:00pm"
@e.date = "12/20/14"
@e.save
puts @e.title

@i = Event.new
@i.user_id = @u.id
@i.title =  "Rails DeCal"
@i.description = "The Rails DeCal will teach you the skills to create dynamic web applications for any purpose."
@i.location = "Wurster Hall"
@i.time = "7:00pm-9:00pm"
@i.date = "12/04/14"
@i.save
puts @i.title

@a = Event.new
@a.user_id = @u.id
@a.title = "AFX Showcase"
@a.description = "Come celebrate the end of Fall semester with AFX!"
@a.location = "Berkeley Community Theater"
@a.time = "6:30-10:00pm"
@a.date = "12/06/14"
@a.save
puts @a.title

@f = Event.new
@f.user_id = @u.id
@f.title = "Fencing Banquet"
@f.description = "Cal Fencing's Semi-Annual Team Banquet Dinner"
@f.location = "Barney's Beanery"
@f.time = "6:30-9:00pm"
@f.date = "12/09/14"
@f.save
puts @f.title


