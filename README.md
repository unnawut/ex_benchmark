# ExBenchmark

Benchmarking various implementations in Elixir.

## Usage

1. Clone this repo: `git@github.com:unnawut/ex_benchmark.git`
2. Install dependencies: `mix deps.get`
3. Run benchmark: `mix benchmark`

## Latest results

See [results.md](/results.md).

## TODOs
- `Regex` vs. `String` functions
- `Map.get/3`, `Map.fetch/2`, `Access.get/3` vs. pattern matching (https://medium.com/learn-elixir/speed-up-data-access-in-elixir-842617030514)
- `Map` vs. `Keyword`
- `Enum.empty?/1` vs `== []` or `== %{}`
