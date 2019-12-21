defmodule NewBeverages do
  @type quantity :: integer()
  @type preparation :: binary()
  @callback prepare_it(quantity) :: {:ok, preparation}

  def prepare(beverage_type) do
    beverage_impl = beverage_for(beverage_type)

    with :ok <- roll_up_sleeves(),
         {:ok, quantity} <- random_quantity(),
         {:ok, preparation} <- beverage_impl.prepare_it(quantity),
         {:ok, _beverage} <- serve_it(preparation) do
      {:ok, "happy days!"}
    else
      error -> {:error, error}
    end
  end

  defp beverage_for(:coffee), do: NewBeverages.Coffee
  defp beverage_for(:tea), do: NewBeverages.Tea
  defp beverage_for(:lemonade), do: NewBeverages.Lemonade

  defp random_quantity, do: {:ok, Enum.random(30..40)}

  defp roll_up_sleeves do
    "rolling up sleeves to start working" |> IO.puts()
  end

  defp serve_it(preparation) do
    served = "ready to drink beverage " <> preparation
    served |> IO.puts()
    {:ok, served}
  end
end
