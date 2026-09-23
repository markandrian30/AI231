# QA Report: TIMER_30s

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 8
- **Excluded WAVs (both scores below 0.80)**: 6

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| TIMER_30s_s69_v1_clean.wav | Timer 30 seconds | It's time at 30 seconds. | 0.769 |
| TIMER_30s_s70_v1_clean.wav | Timer 30 seconds | See you in the next 30 seconds. | 0.565 |
| TIMER_30s_s70_v1_noisy.wav | Timer 30 seconds | in the next 30 seconds. | 0.684 |
| TIMER_30s_s77_v2_clean.wav | Countdown for 30 seconds | Well, calm down for 30 seconds. | 0.755 |
| TIMER_30s_s78_v1_clean.wav | Timer 30 seconds | I'm at 30 seconds | 0.727 |
| TIMER_30s_s78_v1_noisy.wav | Timer 30 seconds | I'm at 30 seconds | 0.727 |
| TIMER_30s_s89_v1_clean.wav | Timer 30 seconds | Thumbnail, 30 seconds | 0.722 |
| TIMER_30s_s89_v1_noisy.wav | Timer 30 seconds | I'm there, 30 seconds | 0.778 |
