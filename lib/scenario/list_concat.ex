defmodule ExBenchmark.Scenario.ListConcat do
  @moduledoc """
  The module containing scenarios to benchmark concatenating a list to another list.
  """
  use ExBenchmark.Scenario, time: 10, print: [fast_warning: false]

  @list_small Enum.to_list(1..10)
  @list_medium Enum.to_list(1..1_000)
  @list_large Enum.to_list(1..100_000)

  # Small vs small
  def benchmark_double_plus_small_vs_small, do: @list_small ++ @list_small
  def benchmark_concat_small_vs_small,      do: Enum.concat(@list_small, @list_small)
  def benchmark_prepend_small_vs_small,     do: prepend(@list_small, @list_small)

  # Medium vs medium
  def benchmark_double_plus_medium_vs_medium, do: @list_medium ++ @list_medium
  def benchmark_concat_medium_vs_medium,      do: Enum.concat(@list_medium, @list_medium)
  def benchmark_prepend_medium_vs_medium,     do: prepend(@list_medium, @list_medium)

  # Large vs Large
  def benchmark_double_plus_large_vs_large, do: @list_large ++ @list_large
  def benchmark_concat_large_vs_large,      do: Enum.concat(@list_large, @list_large)
  def benchmark_prepend_large_vs_large,     do: prepend(@list_large, @list_large)

  # Small vs large
  def benchmark_double_plus_small_vs_large, do: @list_small ++ @list_large
  def benchmark_concat_small_vs_large,      do: Enum.concat(@list_small, @list_large)
  def benchmark_prepend_small_vs_large,     do: prepend(@list_small, @list_large)

  # Large vs small
  def benchmark_double_plus_large_vs_small, do: @list_large ++ @list_small
  def benchmark_concat_large_vs_small,      do: Enum.concat(@list_large, @list_small)
  def benchmark_prepend_large_vs_small,     do: prepend(@list_large, @list_small)

  defp prepend(one, two) do
    Enum.reduce(one, two, fn(item, acc) ->
      [item | acc]
    end)
  end
end
