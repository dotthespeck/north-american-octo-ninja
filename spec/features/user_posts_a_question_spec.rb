require "rails_helper"

feature "user posts a question" do
  it "clicks the post button and is redirected to new" do
    visit "/questions"

    click_link "Ask a new question"

    find_field("question_title").value
    find_field("question_description").value
  end

feature "user inputs a question" do
  it "inputs a question" do
    visit new_question_path
    title = "Here is a big long title for my question post so that it meets the validation"
    question = "And here is a big long response. Sometimes we need to write big long responses so that we can also meet the validations. That is okay. And it's important. So let's make sure that there is plenty of text here."
    fill_in "question_title", with: "#{title}"
    fill_in "question_description", with: "#{question}"
    click_button("Create Question")
    expect(page).to have_content title
    expect(page).to have_content question
    end
  end

  it "creates an invalid question" do
  visit new_question_path
  title = "Too short"
  question = "Much too short"
  fill_in "question_title", with: "#{title}"
  fill_in "question_description", with: "#{question}"
  click_button("Create Question")
  expect(page).to have_content "too short"
  end
end
