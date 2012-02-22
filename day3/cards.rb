class Card_Deck
  @@card_value = (1..13)
  @@card_suite = ["Hearts", "Clubs","Spades","Diamonds"]

  def initialize
    @cards = Array.new  
    @@card_suite.each do |suite|
      @@card_value.each do |value|
        @cards << value.to_s + " of " + suite.to_s
      end
    end
    shuffle
  end

  def reset
    initialize
  end

  def shuffle
    @cards.shuffle!
  end

  def deal (number_of_cards)
    hand = []
    number_of_cards.times do 
      hand << @cards.pop    
    end
    if @cards.count <= 0
      puts "You need to add another deck!"
    else
      return hand
    end
  end
end