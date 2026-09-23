# QA Report: TIMER_10s

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 13
- **Excluded WAVs (both scores below 0.80)**: 12

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| TIMER_10s_s46_v1_clean.wav | Timer 10 seconds | Here, Tim seconds. | 0.688 |
| TIMER_10s_s69_v1_clean.wav | Timer 10 seconds | 10 seconds. | 0.769 |
| TIMER_10s_s69_v1_noisy.wav | Timer 10 seconds | 10 seconds. | 0.769 |
| TIMER_10s_s70_v1_clean.wav | Timer 10 seconds | Karma, kensekans. | 0.387 |
| TIMER_10s_s70_v1_noisy.wav | Timer 10 seconds | I'm on 10 seconds. | 0.788 |
| TIMER_10s_s70_v3_clean.wav | Start a timer for 10 seconds | Stuck at time of 14 seconds. | 0.764 |
| TIMER_10s_s70_v3_noisy.wav | Start a timer for 10 seconds | Stuck at time of 40 seconds | 0.764 |
| TIMER_10s_s76_v1_clean.wav | Timer 10 seconds | 5 or 10 seconds. | 0.774 |
| TIMER_10s_s76_v1_noisy.wav | Timer 10 seconds | 5 or 10 seconds. | 0.774 |
| TIMER_10s_s77_v1_clean.wav | Timer 10 seconds | whyyyyyyyyyyyyyyyyyyyyyy 10 seconds | 0.431 |
| TIMER_10s_s77_v1_noisy.wav | Timer 10 seconds | Waaaaaaahhhhhhhh Time at 10 seconds | 0.588 |
| TIMER_10s_s78_v1_clean.wav | Timer 10 seconds | Emiti, 3 seconds. | 0.710 |
| TIMER_10s_s78_v1_noisy.wav | Timer 10 seconds | Emery, 3 seconds. | 0.774 |
