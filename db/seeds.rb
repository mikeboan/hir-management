# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.destroy_all
questions = Question.create!([
  { body: "Why are you interested in the position?"} ,
  { body: "Why would you be a good fit for the position?" },
  { body: "What would you pay attention to if you were deciding whom to admit into App Academy?" },
  { body: "Please describe your relevant teaching experience (if any)." }
])

App.destroy_all
apps = App.create!([
  { first_name: "Mike", last_name: "Boan", email: "mboan@appacademy.io" },
  { first_name: "Maurice", last_name: "Roach", email: "mroach@appacademy.io" }
])

Response.destroy_all
responses = Response.create!([
  { question_id: questions[0].id, app_id: apps[0].id, body: "For the money" },
  { question_id: questions[1].id, app_id: apps[0].id, body: "I need money" },
  { question_id: questions[2].id, app_id: apps[0].id, body: "If they're smart" },
  { question_id: questions[3].id, app_id: apps[0].id, body: "None" },
  { question_id: questions[0].id, app_id: apps[1].id, body: "It's cool" },
  { question_id: questions[1].id, app_id: apps[1].id, body: "I can do it" },
  { question_id: questions[2].id, app_id: apps[1].id, body: "If they can do it" },
  { question_id: questions[3].id, app_id: apps[1].id, body: "Stuff" },
])

admins = Admin.create([
  { first_name: "Mike", last_name: "Boan", email: "mboan@appacademy.io", password: "starwars" }
])
