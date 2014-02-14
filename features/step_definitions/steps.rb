Given(/^Lists "(.*?)" and "(.*?)" exist$/) do |list1, list2|
  @lists = [list1.chars, list2.chars]
end

When(/^Combining the lists$/) do
  @result = Suggestor.new(@lists).combine
end

Then(/^The idea order should be "(.*?)"$/) do |combined|
  sets = combined.split(',')

  sets.each_with_index do |set, index|
    set.chars.each do |item|
      expect(@result[index]).to include(item)
    end
  end
end
