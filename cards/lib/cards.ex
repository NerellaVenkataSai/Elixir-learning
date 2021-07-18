defmodule Cards do

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Diamond", "Heart", "Spades", "Clubs"]

     ## comprehension List do Map operation on list

    # One Approach of nested loops
    # returns array of arrays to flatten we use List.flatten
    # cards = for value <- values do
    #    for suit <- suits do
    #      "#{value} of #{suit}"
    #    end
    #  end

    #  List.flatten(cards)

    # second approach preferrable one

    for suit <- suits, value <- values do
       "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
