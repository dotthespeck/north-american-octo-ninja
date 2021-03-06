# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Marlon")
User.create(name: "Tom")
User.create(name: "Cheerio")
User.create(name: "Cindy")

Question.create(title: "Here is a question that I have and want to ask", description: "Here is a description of the question that I have. It has to be pretty long so I am saying a lot. Here we go. It is like the equivalent of two tweets, which is a lot of text", user_id: 1)
Question.create(title: "Yet another question that really should be asked", description: "Here is a description of the question that I have. It has to be pretty long so I am saying a lot. Here we go. It is like the equivalent of two tweets, which is a lot of text", user_id: 3)
Question.create(title: "I am stuck in Space Boston too. How do I get out? Space Boston is cold", description: "Somehow I got stuck in Space Boston and now I can't get out. I think I would rather be in Space Paris. But maybe not. Maybe Space Paris is smelly and I would be lonely", user_id: 2)

Answer.create(question_id: 2, user_id: 3, answer: "Here is an answer to a question, I hope that it is helpful. Maybe it will be. Maybe it won't be. Maybe it needs to be really long. Probably. It needs to be really long. I need to have a lot to say.")
Answer.create(question_id: 3, user_id: 1, answer: "Here is an answer to a question, I hope that it is helpful. Maybe it will be. Maybe it won't be. Maybe it needs to be really long. Probably. It needs to be really long. I need to have a lot to say.")
Answer.create(question_id: 23, user_id: 4, answer: "I don't know how to get away from Space Boston. Once you are here, you can never leave. It's like Hotel California, only much colder and the people are more like jerks.")
