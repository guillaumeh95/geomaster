# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.destroy_all

Question.create!(question: "What is the capital city of Paris?", answer: "Paris", level: "easy")
Question.create!(question: "What is the capital city of Japan?", answer: "Tokyo", level: "easy")
Question.create!(question: "What is the capital city of Italy?", answer: "Rome", level: "easy")
Question.create!(question: "What is the capital city of Spain?", answer: "Madrid", level: "easy")
Question.create!(question: "What is the capital city of Portugal?", answer: "Lisbon", level: "easy")
Question.create!(question: "What is the capital city of Switzerland?", answer: "Bern", level: "easy")
Question.create!(question: "What is the capital city of Sweden?", answer: "Stockholm", level: "easy")
Question.create!(question: "What is the capital city of Luxembourg?", answer: "Luxembourg", level: "easy")
