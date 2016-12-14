# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#   1.  rails db:drop    2.   rails db:create    3.  rails db:migrate    4. rails db:seed


usernames = [
  'clover2016',
  'marlow',
  'willow77',
  'ziggy86',
  'matteos',
  'edgorey',
  'banoffee',
  'oscar5245',
  'rita_mamasita',
  'gaitskill'
]

emails = [
  'clover2016@ga.com',
  'marlow@ga.com',
  'willow77@ga.com',
  'ziggy86@ga.com',
  'matteos@ga.com',
  'edgorey@ga.com',
  'banoffee@ga.com',
  'oscar5245@ga.com',
  'rita_mamasita@ga.com',
  'gaitskill@ga.com'
]

passwords = [
  'pw2016',
  'pw2016',
  'pw2016',
  'pw2016',
  'pw2016',
  'pw2016',
  'pw2016',
  'pw2016',
  'pw2016',
  'pw2016'
]

descriptions = [
  'Reason is a slave to the passions.',
  'Black is all you need.',
  'The curves of your lips rewrite history.',
  'Everything was beautiful and nothing hurt.',
  'I\'m just a regular person.',
  'Don\'t feel sorry for yourself. Only assholes do that.',
  'The mind is its own place, and in itself can make a heaven of hell, a hell of heaven.',
  'Stop worrying about growing old. And think about growing up.',
  'Are we really that lost that we need positive affirmation quotes? Please, society.',
  'I like to keep it light.',
]

story_titles = [
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
]

# parts = [
#   '',
#   '',
#   '',
#   '',
#   '',
#   '',
#   '',
#   '',
#   '',
#   '',
#   '',
# ]

users = []
stories = []
# parts = []

User.delete_all
Story.delete_all
# Part.delete_all

10.times do |i|
  user = User.new
  user.name = usernames[i]
  user.email = emails[i]
  user.password = passwords[i]
  user.description = descriptions[i]
  user.photo_url = 'https://placeholdit.imgix.net/~text?txtsize=14&txt=150%C3%97150&w=150&h=150'
  user.save
  users << user
end

10.times do |i|
  story = Story.new
  story.title = story_titles[i]
  story.save
  stories << story
end

# Generating parts will run into story and timestamp issues

# 10.times do |i|
#   part = Part.new
#   part.user_id =
#   part.story_id =
#   parts << part
# end
