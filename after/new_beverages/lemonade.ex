defmodule NewBeverages.Lemonade do
  @behaviour NewBeverages

  def prepare_it(quantity) do
    "getting #{quantity}ml of hearty lemon juice" |> IO.puts()
    {:ok, "prepped with the finest lemon 🍋"}
  end
end
