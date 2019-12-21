defmodule NewBeverages.Tea do
  @behaviour NewBeverages

  def prepare_it(quantity) do
    "getting #{quantity}gr of mixed Indian Assam leaves, brisk Ceylon and bright Kenyan teas"
    |> IO.puts()

    {:ok, "prepped with the finest teas 🍵"}
  end
end
