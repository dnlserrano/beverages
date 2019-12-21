defmodule NewBeverages.Coffee do
  @behaviour NewBeverages

  def prepare_it(quantity) do
    "getting #{quantity}gr of beautiful Peruvian coffee beans" |> IO.puts()
    {:ok, "prepped with the finest coffee ☕️"}
  end
end
