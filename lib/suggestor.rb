class Suggestor
  attr_reader :list

  def initialize(list)
    @list = list
  end

  def combine
    ideas = Hash[list.flatten.uniq.map {|v| [v, 0]}]

    list.each do |set|
      set.reverse.each_with_index do |item, index|
        ideas[item] += (index+1)
      end
    end

    ideas.sort_by { |k,v| v }.reverse.map(&:first)
  end
end
