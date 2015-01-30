# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
%w(seller buyer).each do |type|
	user_type = UserType.where(type_name: type).first_or_initialize
	user_type.description = "User types: #{type}"
	user_type.save!
end

user = User.where(email: "shubham.prakash@hotmail.com", 
						first_name: "Shubham", 
						last_name: "Prakash").first_or_initialize
user.password = "12345678"
user.user_type = UserType.where(type_name:  "seller").first
user.confirm!
user.save!

user = User.where(email: "buyer@example.com", 
						first_name: "buyer", 
						last_name: "test").first_or_initialize
user.password = "12345678"
user.user_type = UserType.where(type_name:  "buyer").first
user.confirm!
user.save!

user = User.where(email: "seller@example.com", 
						first_name: "seller", 
						last_name: "test").first_or_initialize
user.password = "12345678"
user.user_type = UserType.where(type_name:  "seller").first
user.confirm!
user.save!
