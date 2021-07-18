defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

 test "length of deck" do
   deck = Cards.create_deck
   assert length(deck) === 20
 end
end
