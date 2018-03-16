defmodule ExBenchmark.Scenario.ListDiff do
  @moduledoc """
  The module containing scenarios to benchmark list differences.
  """
  use ExBenchmark.Scenario, time: 10, print: [fast_warning: false]

  @list_small_1 Enum.to_list(1..100)
  @list_small_2 Enum.to_list(51..150)

  @list_medium_1 Enum.to_list(1..10_000)
  @list_medium_2 Enum.to_list(5_001..15_000)

  @list_large_1 Enum.to_list(1..100_000)
  @list_large_2 Enum.to_list(50_001..150_000)

  def benchmark_kernel_double_minus_small do
    @list_small_1 -- (@list_small_1 -- @list_small_2)
  end

  def benchmark_map_set_intersection_small do
    MapSet.intersection(MapSet.new(@list_small_1), MapSet.new(@list_small_2))
  end

  def benchmark_kernel_double_minus_medium do
    @list_medium_1 -- (@list_medium_1 -- @list_medium_2)
  end

  def benchmark_map_set_intersection_medium do
    MapSet.intersection(MapSet.new(@list_medium_1), MapSet.new(@list_medium_2))
  end

  def benchmark_kernel_double_minus_large do
    @list_large_1 -- (@list_large_1 -- @list_large_2)
  end

  def benchmark_map_set_intersection_large do
    MapSet.intersection(MapSet.new(@list_large_1), MapSet.new(@list_large_2))
  end

  def benchmark_kernel_double_minus_heavy_left do
    @list_large_1 -- (@list_large_1 -- @list_small_1)
  end

  def benchmark_map_set_intersection_heavy_left do
    MapSet.intersection(MapSet.new(@list_large_1), MapSet.new(@list_small_1))
  end

  def benchmark_kernel_double_minus_heavy_right do
    @list_small_1 -- (@list_small_1 -- @list_large_1)
  end

  def benchmark_map_set_intersection_heavy_right do
    MapSet.intersection(MapSet.new(@list_small_1), MapSet.new(@list_large_1))
  end
end
