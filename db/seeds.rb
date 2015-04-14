# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
p = Post.create :title => "Hello", :body => "This is the first post"

p.comments.create :body => "First post!", :author =>"Homer", :email =>"Homer@simpsons.com"
p.comments.create :body => "Second post!", :author =>"Bart", :email =>"bart@simpsons.com"

