defmodule ExBenchmark.Scenario.ListAddOne do
  @moduledoc """
  The module containing scenarios to benchmark adding an item to a list.
  """
  use ExBenchmark.Scenario, time: 10, print: [fast_warning: false]

  @list_small Enum.to_list(1..10)
  @list_medium Enum.to_list(1..1_000)
  @list_large Enum.to_list(1..100_000)

  # Small
  def benchmark_double_plus_small, do: [0] ++ @list_small
  def benchmark_concat_small,      do: Enum.concat([0], @list_small)
  def benchmark_prepend_small,      do: [0 | @list_small]

  # Medium
  def benchmark_double_plus_medium, do: [0] ++ @list_medium
  def benchmark_concat_medium,      do: Enum.concat([0], @list_medium)
  def benchmark_prepend_medium,      do: [0 | @list_medium]

  # Large list
  def benchmark_double_plus_large, do: [0] ++ @list_large
  def benchmark_concat_large,      do: Enum.concat([0], @list_large)
  def benchmark_prepend_large,      do: [0 | @list_large]
end
