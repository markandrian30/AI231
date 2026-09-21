# QA Report: STOP

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Device**: CPU int8
- **Date**: 2026-09-22
- **Excluded WAVs (either score below 0.70)**: 24
- **Flagged WAVs**: 22

- **Cleanup policy**: move both clean/noisy files if either score is strictly below 0.70. Scores of 0.70 or above do not trigger removal.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| STOP_s1_v1_noisy.wav | Stop | Hmm. Stop. | 0.667 |
| STOP_s3_v1_clean.wav | Stop | Yeah. | 0.000 |
| STOP_s3_v1_noisy.wav | Stop | Yeah. | 0.000 |
| STOP_s4_v1_clean.wav | Stop | ooo | 0.286 |
| STOP_s4_v1_noisy.wav | Stop | Ooh. | 0.286 |
| STOP_s8_v1_clean.wav | Stop | startup | 0.545 |
| STOP_s8_v1_noisy.wav | Stop | startup | 0.545 |
| STOP_s12_v1_clean.wav | Stop | Bop. | 0.571 |
| STOP_s13_v1_clean.wav | Stop | END UP | 0.200 |
| STOP_s13_v1_noisy.wav | Stop | End up | 0.200 |
| STOP_s29_v2_noisy.wav | Stop playing | for prices, top playing. | 0.706 |
| STOP_s32_v1_clean.wav | Stop | salt. | 0.500 |
| STOP_s35_v1_clean.wav | Stop | and stop | 0.667 |
| STOP_s35_v1_noisy.wav | Stop | and stop. | 0.667 |
| STOP_s40_v1_clean.wav | Stop | It's up. | 0.364 |
| STOP_s40_v1_noisy.wav | Stop | Yep. | 0.286 |
| STOP_s44_v2_clean.wav | Stop playing | without playing. | 0.741 |
| STOP_s50_v1_noisy.wav | Stop | stuff. | 0.444 |
| STOP_s60_v1_clean.wav | Stop | Nope. | 0.500 |
| STOP_s60_v1_noisy.wav | Stop | Nope. | 0.500 |
| STOP_s75_v1_clean.wav | Stop | Stop. Stop. | 0.615 |
| STOP_s75_v1_noisy.wav | Stop | Stop. Stop. | 0.615 |
