# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Post.delete_all

users = User.create([{email: 'user1@example.com'},{email: 'user2@example.com'},{email: 'user3@example.com'}])
posts = Post.create([
  {poster: users.first, headline: 'Walk at the park', detail: 'We want to go for a walk during lunch!'},

  {poster: users[1], headline: 'MMA', detail: 'Anyone interested going for mma?'},

  {poster: users[1], headline: 'Football', detail: 'We booked a football field, who is coming'},

  {poster: users[2], headline: 'Cooking', detail: 'We want to start cooking during lunch'},

  {poster: users[0], headline: 'CodeClub', detail: 'Our next CodeClub during lunch is next week'}])