Given(/^I am on the create idea page$/) do
  visit new_idea_path
end

When(/^I fill out the idea form$/) do
  fill_in "Title", with: "Woah Neo"
  fill_in "Description", with: "I'm the one"
end

When(/^I submit the form$/) do
  click_on "Upload to the Matrix"
end

Then(/^I should see a success message$/) do
  expect(page).to have_content "Idea synchronized"
end

Then(/^I should see my idea$/) do
  idea = Idea.first

  expect(idea.title).to eq "Woah Neo"
  expect(idea.description).to eq "I'm the one"
end
