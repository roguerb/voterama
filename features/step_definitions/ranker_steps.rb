Given(/^lists "(.*?)" and "(.*?)" exist$/) do |list1, list2|
  @lists = [list1.chars, list2.chars]
end

When(/^combining the lists with the "(.*?)" ranker$/) do |ranker|
  @result = RankedList.rank(@lists, ranker.to_sym)
end

Then(/^the idea order should be "(.*?)"$/) do |combined|
  sets = combined.split(',')

  sets.each_with_index do |set, index|
    set.chars.each do |item|
      expect(@result[index]).to include(item)
    end
  end
end
