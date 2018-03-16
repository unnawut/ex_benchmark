defmodule ExBenchmark do
  @moduledoc """
  Documentation for ExBenchmark.
  """

  @doc """
  Runs benchmark on the provided module.
  """
  def run(modules) do
    Enum.each(modules, fn(module) -> run_single(module) end)
  end

  defp run_single(module) do
    jobs = Enum.reduce(module.scenarios(), %{}, fn(scenario, jobs) ->
      Map.put(jobs, job_name(scenario), fn -> apply(module, scenario, []) end)
    end)

    Benchee.run(jobs, module.config())
  end

  defp job_name(scenario) do
    scenario
    |> Atom.to_string()
    |> String.replace_leading("benchmark_", "")
  end
end
