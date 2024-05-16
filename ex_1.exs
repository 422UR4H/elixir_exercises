defmodule Challenge do
  @moduledoc """
  divides the value of a shopping list fairly between people (represented by their emails)
  """

  @doc """
  function that performs the split fairly
  """
  @spec split(
          shopping_list :: [
            {
              item_name :: String.t(),
              quantity :: pos_integer(),
              unity_value :: pos_integer()
            }
          ],
          emails :: [String.t()]
        ) :: [%{String.t() => non_neg_integer()}]
  def split(shopping_list, emails) do
    emails_list = Enum.uniq(emails)
    emails_length = length(emails_list)

    total_value = calculate_total_value(shopping_list)
    splitted_price = div(total_value, emails_length)
    remainder = rem(total_value, emails_length)

    emails_list
    |> Enum.with_index(fn email, i ->
      if i < remainder do
        {email, splitted_price + 1}
      else
        {email, splitted_price}
      end
    end)
    |> Map.new()
  end

  @spec calculate_total_value(
          shopping_list :: [
            {
              item_name :: String.t(),
              quantity :: pos_integer(),
              unity_value :: pos_integer()
            }
          ]
        ) :: non_neg_integer()
  defp calculate_total_value(shopping_list) do
    Enum.reduce(shopping_list, 0, fn {_, quantity, unity_value}, acc ->
      acc + quantity * unity_value
    end)
  end
end

Challenge.split(
  [
    {"item_name", 3, 1},
    {"item_name_2", 1, 10}
  ],
  ["email1", "email2", "email3"]
)
|> IO.inspect()
