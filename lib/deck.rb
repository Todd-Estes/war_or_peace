class Deck
  attr_reader :cards
  def initialize(cards = [])
    @cards = cards
  end

  def rank_of_card_at(index)
    if @cards[index].nil? == true
      return 0
    else
      @cards[index].rank
    end
  end

  def high_ranking_cards
    @cards.find_all do |card|
        card.rank >= 11
    end
  end

  def percent_high_ranking
    (self.high_ranking_cards.count.to_f / @cards.count).round(4) * 100
  end

  def remove_card
    @cards.shift
  end

  def add_card(card)
    cards << card
  end

end
