class Suggestor
  attr_reader :list

  def initialize(list)
    @list = list
  end

  def combine
    ideas = Hash[list.flatten.uniq.map {|v| [v, 0]}]
    max_value = ideas.length

    list.each do |set|
      set.each_with_index do |item, index|
        ideas[item] += (max_value - index)
      end
    end

    sorted = ideas.sort_by { |k,v| v }.reverse

    sets = {}
    sorted.each do |item|
      sets[item[1]] ||= []
      sets[item[1]] << item[0]
    end

    sets.map { |_key, value| value }
  end
end
