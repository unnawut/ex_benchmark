# ExBenchmark

Benchmarking various implementations in Elixir.

## Usage

1. Clone this repo: `git@github.com:unnawut/ex_benchmark.git`
2. Install dependencies: `mix deps.get`
3. Run benchmark: `mix benchmark`

## Currently benchmarking

- [x] **Check for emptiness:** `Enum.empty?/1` vs `Enum.count/1` vs equality comparison (`== []` and `== %{}`)
- [x] **Prepend one item to list:** `++` vs `Enum.concat/2` vs `[elem | list]`
- [x] **Concatenate two lists:** `++` vs `Enum.concat/2` vs `Enum.reduce/3` with `[elem | list]`
- [x] **Delta two lists:** `one -- (one -- two)` vs `MapSet.intersection/2`
- [ ] `Regex` vs `String` functions
- [ ] `Map` vs `Keyword` functions
- [ ] `Map.get/3`, `Map.fetch/2`, `Access.get/3` vs pattern matching (https://medium.com/learn-elixir/speed-up-data-access-in-elixir-842617030514)

## Latest results

See [results.md](/results.md).
