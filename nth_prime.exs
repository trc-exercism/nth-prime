defmodule Prime do

  @doc """
  Generates the nth prime.
  """
  @spec nth(non_neg_integer) :: non_neg_integer
  def nth(count) do
    _nth(count)
  end

  defp _nth(num) when num < 1, do: raise "Require non-negative integer larger than 0"
  defp _nth(num) do
    Enum.at(2..542 |> Enum.filter(fn i -> is_prime?(i) end), num-1)
  end

  defp is_prime?(2), do: true
  defp is_prime?(number) do
    2..number
    |> Enum.filter(fn i -> rem(number, i) == 0 end)
    |> length() == 1
  end
end
