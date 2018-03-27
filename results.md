# Latest results

```
$ mix benchmark
Operating System: macOS
CPU Information: Intel(R) Core(TM) i5-7360U CPU @ 2.30GHz
Number of Available Cores: 4
Available memory: 16 GB
Elixir 1.6.4
Erlang 20.2.4
Benchmark suite executing with the following configuration:
warmup: 2 s
time: 10 s
parallel: 1
inputs: none specified
Estimated total run time: 2 min


Name                                       ips        average  deviation         median         99th %
kernel_double_minus_heavy_right        27.40 M      0.0365 μs    ±39.50%      0.0340 μs      0.0800 μs
kernel_double_minus_large              26.78 M      0.0374 μs    ±34.32%      0.0360 μs      0.0780 μs
kernel_double_minus_medium             26.69 M      0.0375 μs   ±122.51%      0.0350 μs      0.0790 μs
kernel_double_minus_heavy_left         26.68 M      0.0375 μs   ±112.34%      0.0350 μs      0.0810 μs
kernel_double_minus_small              22.61 M      0.0442 μs   ±240.55%      0.0350 μs       0.136 μs
map_set_intersection_small            0.0462 M       21.66 μs   ±256.72%          18 μs          63 μs
map_set_intersection_medium          0.00022 M     4510.74 μs    ±27.73%        4252 μs     7636.32 μs
map_set_intersection_heavy_left      0.00005 M    19352.54 μs    ±16.80%       19012 μs    26816.88 μs
map_set_intersection_heavy_right     0.00005 M    20237.24 μs    ±20.64%    19684.50 μs    35973.50 μs
map_set_intersection_large           0.00002 M    54270.80 μs    ±13.09%       53249 μs    89689.98 μs

Comparison:
kernel_double_minus_heavy_right        27.40 M
kernel_double_minus_large              26.78 M - 1.02x slower
kernel_double_minus_medium             26.69 M - 1.03x slower
kernel_double_minus_heavy_left         26.68 M - 1.03x slower
kernel_double_minus_small              22.61 M - 1.21x slower
map_set_intersection_small            0.0462 M - 593.37x slower
map_set_intersection_medium          0.00022 M - 123591.86x slower
map_set_intersection_heavy_left      0.00005 M - 530249.17x slower
map_set_intersection_heavy_right     0.00005 M - 554489.39x slower
map_set_intersection_large           0.00002 M - 1486990.55x slower


Name                                   ips        average  deviation         median         99th %
double_plus_small_vs_small         26.69 M      0.0375 μs    ±59.86%      0.0350 μs      0.0760 μs
double_plus_small_vs_large         26.11 M      0.0383 μs    ±53.32%      0.0350 μs      0.0850 μs
double_plus_medium_vs_medium       25.59 M      0.0391 μs   ±310.47%      0.0350 μs      0.0850 μs
double_plus_large_vs_large         24.73 M      0.0404 μs   ±100.13%      0.0370 μs      0.0830 μs
double_plus_large_vs_small         24.33 M      0.0411 μs   ±224.49%      0.0350 μs      0.0980 μs
concat_small_vs_large               8.49 M       0.118 μs  ±6992.36%       0.100 μs        0.40 μs
concat_small_vs_small               8.22 M       0.122 μs  ±7064.44%       0.100 μs        0.40 μs
prepend_small_vs_large              3.22 M        0.31 μs   ±398.67%        0.23 μs        1.94 μs
prepend_small_vs_small              3.19 M        0.31 μs  ±2701.28%        0.20 μs        0.90 μs
concat_medium_vs_medium             0.45 M        2.24 μs  ±3119.16%           2 μs           8 μs
prepend_medium_vs_medium          0.0606 M       16.50 μs   ±273.82%          13 μs          44 μs
concat_large_vs_large            0.00303 M      330.61 μs   ±130.86%         160 μs     1223.98 μs
concat_large_vs_small            0.00302 M      331.49 μs   ±113.16%         159 μs     1367.08 μs
prepend_large_vs_small           0.00059 M     1690.46 μs    ±22.08%        1684 μs        2904 μs
prepend_large_vs_large           0.00058 M     1739.61 μs    ±29.56%        1684 μs     3353.96 μs

Comparison:
double_plus_small_vs_small         26.69 M
double_plus_small_vs_large         26.11 M - 1.02x slower
double_plus_medium_vs_medium       25.59 M - 1.04x slower
double_plus_large_vs_large         24.73 M - 1.08x slower
double_plus_large_vs_small         24.33 M - 1.10x slower
concat_small_vs_large               8.49 M - 3.14x slower
concat_small_vs_small               8.22 M - 3.25x slower
prepend_small_vs_large              3.22 M - 8.28x slower
prepend_small_vs_small              3.19 M - 8.37x slower
concat_medium_vs_medium             0.45 M - 59.80x slower
prepend_medium_vs_medium          0.0606 M - 440.30x slower
concat_large_vs_large            0.00303 M - 8822.48x slower
concat_large_vs_small            0.00302 M - 8846.04x slower
prepend_large_vs_small           0.00059 M - 45111.42x slower
prepend_large_vs_large           0.00058 M - 46422.81x slower


Name                         ips        average  deviation         median         99th %
double_plus_large        26.43 M      0.0378 μs    ±39.16%      0.0350 μs      0.0750 μs
prepend_small            26.25 M      0.0381 μs   ±122.84%      0.0340 μs      0.0840 μs
prepend_medium           23.93 M      0.0418 μs   ±196.47%      0.0350 μs       0.115 μs
prepend_large            21.72 M      0.0461 μs   ±361.14%      0.0360 μs       0.150 μs
double_plus_medium       21.34 M      0.0469 μs   ±385.02%      0.0350 μs       0.159 μs
concat_small             17.72 M      0.0565 μs  ±1030.17%      0.0500 μs       0.120 μs
concat_large             17.00 M      0.0588 μs  ±1122.95%      0.0500 μs       0.150 μs
concat_medium            16.12 M      0.0620 μs  ±1074.86%      0.0500 μs       0.160 μs
double_plus_small        15.02 M      0.0666 μs   ±737.12%      0.0410 μs        0.34 μs

Comparison:
double_plus_large        26.43 M
prepend_small            26.25 M - 1.01x slower
prepend_medium           23.93 M - 1.10x slower
prepend_large            21.72 M - 1.22x slower
double_plus_medium       21.34 M - 1.24x slower
concat_small             17.72 M - 1.49x slower
concat_large             17.00 M - 1.55x slower
concat_medium            16.12 M - 1.64x slower
double_plus_small        15.02 M - 1.76x slower
```
