defmodule Beverages do
  def prepare(beverage_type) do
    with :ok <- roll_up_sleeves(),
         {:ok, quantity} <- random_quantity(),
         {:ok, preparation} <- prepare_it(beverage_type, quantity),
         {:ok, _beverage} <- serve_it(preparation) do
      {:ok, "happy days!"}
    else
      error -> {:error, error}
    end
  end

  defp random_quantity, do: {:ok, Enum.random(30..40)}

  defp roll_up_sleeves do
    "rolling up sleeves to start working" |> IO.puts()
  end

  defp prepare_it(:coffee, quantity) do
    "getting #{quantity}gr of beautiful Peruvian coffee beans" |> IO.puts()
    {:ok, "prepped with the finest coffee ☕️"}
  end

  defp prepare_it(:tea, quantity) do
    "getting #{quantity}gr of mixed Indian Assam leaves, brisk Ceylon and bright Kenyan teas"
    |> IO.puts()

    {:ok, "prepped with the finest teas 🍵"}
  end

  defp prepare_it(:lemonade, quantity) do
    "getting #{quantity}ml of hearty lemon juice" |> IO.puts()
    {:ok, "prepped with the finest lemon 🍋"}
  end

  defp serve_it(preparation) do
    served = "ready to drink beverage " <> preparation
    served |> IO.puts()
    {:ok, served}
  end
end
