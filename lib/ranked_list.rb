module RankedList
  def self.rank(list, ranker)
    if ranker.is_a? Symbol
      ranker = ("RankedList::#{ranker.to_s.capitalize}Ranker").constantize
    end

    ranker.call(list)
  end
end
