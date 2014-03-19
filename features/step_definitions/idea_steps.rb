Given(/^there are ideas$/) do
  @ideas = create_list :idea, 8
end

When(/^I submit the idea form$/) do
  fill_in "Title", with: "Woah Neo"
  fill_in "Description", with: "I'm the one"
  click_on "Upload to the Matrix"
end

Then(/^I should see a success message$/) do
  expect(page).to have_content "Idea synchronized"
end

Then(/^I should see a list of ideas$/) do
  @ideas.each do |idea|
    expect(page).to have_content idea.title
    expect(page).to have_content idea.description
  end
end

Then(/^I should see my idea$/) do
  expect(page).to have_content "Woah Neo"
  expect(page).to have_content "I'm the one"
end
