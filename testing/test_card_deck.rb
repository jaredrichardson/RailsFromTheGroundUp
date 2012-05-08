require 'test/unit'

require 'simplecov'
SimpleCov.start

require './card_deck'



class Test_Card_Deck < Test::Unit::TestCase

  def setup
    @a_deck = Card_Deck.new
  end

  def teardown
  end

  def test_num_cards
    expected = 52
    actual = @a_deck.num_cards
    assert_equal( expected, actual, "I expected #{expected} cards, but found #{actual}")

    deal_n(20)
    actual = @a_deck.num_cards

  end

  def test_shuffle
    is_shuffled = @a_deck.is_shuffled?
    assert_equal( true, is_shuffled, "A new deck should be shuffled.")

    @a_deck.sort!
    is_shuffled = @a_deck.is_shuffled?
    assert_equal( false, is_shuffled, "A sorted deck should be not be shuffled.")

    @a_deck.shuffle
    is_shuffled = @a_deck.is_shuffled?
    assert_equal( true, is_shuffled, "A shuffled deck should be shuffled.")
  end

  def test_sort
    @a_deck.sort!
    is_sorted = @a_deck.is_sorted?
    assert_equal( true, is_sorted, "A sorted deck should be not be shuffled.")
  end

  def test_deal_one
    deal_n(1)
  end

  def test_deal_five
    10.times do
      deal_n(5)
    end
  end

  def test_deal_20
    deal_n(20)
  end

  def test_deal_too_many
    # test card_deck size + 1
  end

  ################
  ## Support classes below
  ################

  def deal_n(num)
    hand = @a_deck.deal(num)
    assert_equal(num, hand.count, "Asked for #{num} but got #{hand.count}")
  end
end