# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Post.delete_all
Comment.delete_all
Event.delete_all

users = User.create([{email: 'evangelos.giataganas@digital.justice.gov.uk', first_name: 'Evangelos', last_name: 'Giataganas'},
                     {email: 'andreas.pit@digital.justice.gov.uk', first_name: 'Andreas', last_name: 'Pit'},
                     {email: 'mary.non@example.com', first_name: 'Mary', last_name: 'Non'}])
posts = Post.create([
  {poster: users.first, headline: 'Walk at the park', detail: 'We want to go for a walk during lunch!'},

  {poster: users[1], headline: 'MMA', detail: 'Anyone interested going for mma?'},

  {poster: users[1], headline: 'Football', detail: 'We booked a football field, who is coming'},

  {poster: users[2], headline: 'Cooking', detail: 'We want to start cooking during lunch'},

  {poster: users[0], headline: 'CodeClub', detail: 'Our next CodeClub during lunch is next week'}])
comments = Comment.create([
  {comment_input: "Yeah, why not?", post: posts.first, user: users[2]},
  {comment_input: "Count me in!", post: posts.first, user: users[3]},
  {comment_input: "That's great!", post: posts.first, user: users[1]},
  {comment_input: "When are you gonna meet?", post: posts.first, user: users[2]},
  {comment_input: "Tommorrow.", post: posts.first, user: users[1]},
  {comment_input: "Yeah, why not?", post: posts[2], user: users[2]},
  {comment_input: "Count me in!", post: posts[2], user: users[3]},
  {comment_input: "That's great!", post: posts[2], user: users[1]},
  {comment_input: "When are you gonna meet?", post: posts[3], user: users[2]},
  {comment_input: "Tomorrow.", post: posts[3], user: users[1]}])

events = Event.create!([
  {  name: "Park walks", 
    description: "Walk at the park during lunch!", 
    details: "I come up with that idea, walks at the park during lunch so we could meet and have lunch", 
    organiser: users.first, 
    start_time: Time.now, 
    end_time: 10.minutes.from_now, start_date: 2.days.from_now, end_date: 2.days.from_now}
  # {name: nil, description: nil, details: nil, organiser_id: nil, start_time: nil, end_time: nil, start_date: nil, end_date: nil},
  # {name: nil, description: nil, details: nil, organiser_id: nil, start_time: nil, end_time: nil, start_date: nil, end_date: nil},
  # {name: nil, description: nil, details: nil, organiser_id: nil, start_time: nil, end_time: nil, start_date: nil, end_date: nil}
  ])
