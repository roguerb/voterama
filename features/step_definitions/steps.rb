Given(/^Lists "(.*?)" and "(.*?)" exist$/) do |list1, list2|
  @lists = [list1.chars, list2.chars]
end

When(/^Combining the lists$/) do
  @result = Suggestor.new(@lists).combine
end

Then(/^The idea order should be "(.*?)"$/) do |combined|
  expect(@result).to eql(combined.chars)
end
