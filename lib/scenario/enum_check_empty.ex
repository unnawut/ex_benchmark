defmodule ExBenchmark.Scenario.EnumCheckEmpty do
  @moduledoc """
  The module containing scenarios to benchmark checking enum for emptiness.
  """
  use ExBenchmark.Scenario, time: 10, print: [fast_warning: false]

  @list_empty []
  @list_large Enum.to_list(1..10_000)

  @map_empty %{}
  @map_large Map.new(for i <- 1..10_000, do:  {i, i})

  # List operations
  def benchmark_enum_empty_on_empty_list, do: Enum.empty?(@list_empty)
  def benchmark_enum_empty_on_large_list, do: Enum.empty?(@list_large)

  def benchmark_enum_count_on_empty_list, do: Enum.count(@list_empty) == 0
  def benchmark_enum_count_on_large_list, do: Enum.count(@list_large) == 0

  def benchmark_equality_on_empty_list, do: @list_empty == []
  def benchmark_equality_on_large_list, do: @list_large == []

  # Map operations
  def benchmark_enum_empty_on_empty_map, do: Enum.empty?(@map_empty)
  def benchmark_enum_empty_on_large_map, do: Enum.empty?(@map_large)

  def benchmark_enum_count_on_empty_map, do: Enum.count(@map_empty) == 0
  def benchmark_enum_count_on_large_map, do: Enum.count(@map_large) == 0

  def benchmark_equality_on_empty_map, do: @map_empty == %{}
  def benchmark_equality_on_large_map, do: @map_large == %{}
end
