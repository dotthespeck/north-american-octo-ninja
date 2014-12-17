require 'rails_helper'

feature "User visits the question page" do


  question1 = Question.create!(title: "Here is a question that I have and it needs to be pretty long to meet the criteria", description: "Here is an even longer description because those need to be really long or else they will not be accepted. Like 150 characters. Way super long. One hundred and fifty characters.", user_id: user.id)
  question2 = Question.create!(title: "Hip the hop the hip hip hoppity and you hip hip hop and you can't stop with a rock", description: "A really long series of lyrics: blah bah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", user_id: user.id)

  it "sees a title" do
    visit "/questions"
    expect(page).to have_content "Ask a new question"
  end

  it "sees all of the questions listed on a page" do

    visit "/questions"

    expect(page).to have_content question1.title
    expect(page).to have_content question2.title
    expect(page).to have_content question1.description
    expect(page).to have_content question2.description

  end

  it "sees all of the questions in order, most recently posted first" do

  visit "/questions"
  expect(page).to have_content /.*#{question2.title}.*#{question1.title}/

  end
end
