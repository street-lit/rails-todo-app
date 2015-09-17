# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
words = %w(walk make dog clean run the kitchen groceries food pay insurance bills homework do the study run bank car dishes dust)

100.times do |n|
  task = 5.times.map { words.sample }.join(' ')
  Task.create({ name: task })
end
