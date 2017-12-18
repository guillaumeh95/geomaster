# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.destroy_all

countries = Restcountry::Country.all
capitals = []
countries.each do |country|
  capitals << country.capital
end

countries.each do |country|
  question = Question.new(question: "What is the capital city of #{country.name}?", answer: "#{country.capital}")

  # Correct choice
  question_choice_correct = QuestionChoice.new(choice: country.capital)
  question_choice_correct.question = question
  question_choice_correct.save

  # Incorrect choices
  4.times do
    question_choice_incorrect = QuestionChoice.new(choice: capitals.sample)
    question_choice_incorrect.question = question
    question_choice_incorrect.save
  end
  question.save
end
