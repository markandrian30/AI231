# QA Report: PAUSE

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Device**: CPU int8
- **Date**: 2026-09-22
- **Excluded WAVs (both versions flagged)**: 14
- **Flagged WAVs**: 22

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| PAUSE_s4_v1_noisy.wav | Pause | Blow his lairs. | 0.211 |
| PAUSE_s4_v3_noisy.wav | Pause song | I'm Pa's song. | 0.696 |
| PAUSE_s24_v3_noisy.wav | Pause song | Mmm. Pawsong. | 0.571 |
| PAUSE_s39_v3_noisy.wav | Pause song | false wrong | 0.667 |
| PAUSE_s68_v1_clean.wav | Pause | Clies. | 0.200 |
| PAUSE_s68_v1_noisy.wav | Pause | Clies. | 0.200 |
| PAUSE_s68_v3_clean.wav | Pause song | 4th song | 0.556 |
| PAUSE_s70_v3_clean.wav | Pause song | I'll song | 0.526 |
| PAUSE_s70_v3_noisy.wav | Pause song | I'll song | 0.526 |
| PAUSE_s72_v1_clean.wav | Pause |  | 0.000 |
| PAUSE_s72_v1_noisy.wav | Pause |  | 0.000 |
| PAUSE_s73_v1_clean.wav | Pause | Buzz. | 0.222 |
| PAUSE_s73_v1_noisy.wav | Pause | Buzz. | 0.222 |
| PAUSE_s73_v3_clean.wav | Pause song | Boston | 0.375 |
| PAUSE_s73_v3_noisy.wav | Pause song | Boston | 0.375 |
| PAUSE_s74_v3_clean.wav | Pause song | Buzz song | 0.632 |
| PAUSE_s76_v1_clean.wav | Pause | Pounds. | 0.545 |
| PAUSE_s78_v2_clean.wav | Pause audio | I'm Paul's Audio. | 0.741 |
| PAUSE_s78_v2_noisy.wav | Pause audio | I'm Paul's Audio. | 0.741 |
| PAUSE_s90_v3_clean.wav | Pause song | Fawesome. | 0.444 |
| PAUSE_s90_v3_noisy.wav | Pause song | Fawesome. | 0.444 |
| PAUSE_s100_v3_clean.wav | Pause song | BOSS SONG | 0.632 |
