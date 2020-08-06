defmodule Cardsx do
  @moduledoc """
  Documentation for `Cardsx`.
  """
  def create_deck do
    values = ["Ace", "deux", "trois", "Quatre", "cinq", "sept","huit", "neuf","dix","valet","dame","roi"]
    suits = ["Piques", "Tréfle", "Coeur", "carreaux"]
    # boucle for imbriqué Methode 2
    for suit <- suits, value <- values do
      "#{value} de #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  #Compte le nombre de carte dans le jeu
  def count(deck) do
    numberCards = Enum.count(deck)
    cond do
      numberCards == 52 ->
        "Messieurs et Dames Bon Pocker"
      numberCards > 52 ->
        "Monsieur le croupier il y a trop carte dans le jeu"
      numberCards < 52 ->
        "Pas assez de carte monsieur le croupier"
    end
  end

  def capitalize(deck) do
    for line <- deck  do
      String.capitalize(line, :default)
    end
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
end
