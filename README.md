# ExBenchmark

Benchmarking various implementations in Elixir.

## Latest result

```
$ command mix benchmark
Operating System: macOS
CPU Information: Intel(R) Core(TM) i5-7360U CPU @ 2.30GHz
Number of Available Cores: 4
Available memory: 16 GB
Elixir 1.6.2
Erlang 20.2.4
Benchmark suite executing with the following configuration:
warmup: 2 s
time: 10 s
parallel: 1
inputs: none specified
Estimated total run time: 2 min


Benchmarking benchmark_kernel_double_minus_heavy_left...
Benchmarking benchmark_kernel_double_minus_heavy_right...
Benchmarking benchmark_kernel_double_minus_large...
Benchmarking benchmark_kernel_double_minus_medium...
Benchmarking benchmark_kernel_double_minus_small...
Benchmarking benchmark_map_set_intersection_heavy_left...
Benchmarking benchmark_map_set_intersection_heavy_right...
Benchmarking benchmark_map_set_intersection_large...
Benchmarking benchmark_map_set_intersection_medium...
Benchmarking benchmark_map_set_intersection_small...

Name                                                 ips        average  deviation         median         99th %
benchmark_kernel_double_minus_large              26.44 M      0.0378 μs   ±122.61%      0.0360 μs      0.0700 μs
benchmark_kernel_double_minus_small              26.07 M      0.0384 μs    ±65.33%      0.0360 μs      0.0770 μs
benchmark_kernel_double_minus_heavy_right        26.03 M      0.0384 μs   ±142.48%      0.0360 μs      0.0720 μs
benchmark_kernel_double_minus_medium             25.11 M      0.0398 μs    ±72.27%      0.0360 μs      0.0870 μs
benchmark_kernel_double_minus_heavy_left         24.51 M      0.0408 μs   ±612.98%      0.0400 μs       0.120 μs
benchmark_map_set_intersection_small            0.0500 M       20.02 μs   ±139.80%          18 μs          51 μs
benchmark_map_set_intersection_medium          0.00023 M     4280.02 μs    ±19.02%        4058 μs     6856.12 μs
benchmark_map_set_intersection_heavy_left      0.00005 M    18621.98 μs    ±16.43%    17943.50 μs    25495.10 μs
benchmark_map_set_intersection_heavy_right     0.00005 M    19873.66 μs    ±16.84%       19604 μs    27388.32 μs
benchmark_map_set_intersection_large           0.00002 M    50706.06 μs     ±7.82%    51274.50 μs    62212.43 μs

Comparison:
benchmark_kernel_double_minus_large              26.44 M
benchmark_kernel_double_minus_small              26.07 M - 1.01x slower
benchmark_kernel_double_minus_heavy_right        26.03 M - 1.02x slower
benchmark_kernel_double_minus_medium             25.11 M - 1.05x slower
benchmark_kernel_double_minus_heavy_left         24.51 M - 1.08x slower
benchmark_map_set_intersection_small            0.0500 M - 529.35x slower
benchmark_map_set_intersection_medium          0.00023 M - 113174.20x slower
benchmark_map_set_intersection_heavy_left      0.00005 M - 492410.91x slower
benchmark_map_set_intersection_heavy_right     0.00005 M - 525508.42x slower
benchmark_map_set_intersection_large           0.00002 M - 1340793.01x slower
```
