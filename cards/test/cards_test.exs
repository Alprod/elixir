defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

 test "get a deck of cards" do
  values = ["Ace", "deux" ,"trois", "Quatre", "cinq","six", "sept","huit", "neuf","dix","valet","dame","roi"]
  suits = ["Piques", "Tréfle", "Coeur", "carreaux"]

  expected_deck = for suit <- suits, value <- values do
      "#{value} de #{suit}"
  end
  deck = Cards.inisilaze_deck
  assert deck != expected_deck
  assert Enum.count(deck) == 52
  assert Enum.all?(deck, fn card -> card in expected_deck end)
 end

 test "count a number of hand for a number of players" do
  assert some == 4
 end

end
