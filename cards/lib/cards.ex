defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """
  @doc """
  creation card game.
  also creation hand
  """
  # Création d'un jeu de carte
  def create_deck do
    values = ["Ace", "deux", "trois", "Quatre", "cinq","six", "sept","huit", "neuf","dix","valet","dame","roi"]
    suits = ["Piques", "Tréfle", "Coeur", "carreaux"]
    # boucle for imbriqué Methode 2
    for suit <- suits, value <- values do
      "#{value} de #{suit}"
    end
  end

  #Intilisation joueurs
  def inisilaze_deck() do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.capitalize?()
  end


  # Mettre le premier caractère en majuscule.
  # Ma fonction perso.
  def capitalize?(deck) do
    for line <- deck do
      String.capitalize(line, :default)
    end
  end

  # Mélange le tableau
  def shuffle(deck) do
    Enum.shuffle(deck)
  end


end
