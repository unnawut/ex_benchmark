defmodule ExBenchmark.Scenario do
  defmacro __using__(opts) do
    quote do
      alias ExBenchmark.Scenario

      def scenarios do
        ExBenchmark.Scenario.get_scenarios(__MODULE__)
      end

      def config do
        unquote(opts)
      end
    end
  end

  def get_scenarios(module) do
    :functions
    |> module.__info__()
    |> Keyword.keys()
    |> Enum.filter(fn(function_name) ->
        function_name
        |> Atom.to_string()
        |> String.starts_with?("benchmark_")
      end)
  end
end
