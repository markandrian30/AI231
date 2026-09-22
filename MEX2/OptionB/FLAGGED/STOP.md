# QA Report: STOP

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Device**: CPU int8
- **Date**: 2026-09-22
- **Excluded WAVs (both scores below 0.80)**: 28
- **Flagged WAVs**: 33

- **Cleanup policy**: move both files only if BOTH clean and noisy score below 0.80. Single-condition failures retain both recordings.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| STOP_s1_v1_clean.wav | Stop | Hurry up! | 0.167 |
| STOP_s1_v1_noisy.wav | Stop | Quick! | 0.000 |
| STOP_s3_v1_clean.wav | Stop | XeDob | 0.222 |
| STOP_s3_v1_noisy.wav | Stop | See you next time. | 0.190 |
| STOP_s4_v1_clean.wav | Stop | Thank you. | 0.308 |
| STOP_s4_v1_noisy.wav | Stop | Thank you. | 0.308 |
| STOP_s12_v1_clean.wav | Stop | Stoop stop | 0.571 |
| STOP_s12_v1_noisy.wav | Stop | stoop stop | 0.571 |
| STOP_s21_v3_clean.wav | End playback | Take it and play back. | 0.727 |
| STOP_s21_v3_noisy.wav | End playback | Take it and play back. | 0.727 |
| STOP_s26_v3_noisy.wav | End playback | it in to playback. | 0.690 |
| STOP_s29_v2_noisy.wav | Stop playing | for prices, top playing. | 0.706 |
| STOP_s35_v1_clean.wav | Stop | Snap. | 0.500 |
| STOP_s35_v1_noisy.wav | Stop | Snap. | 0.500 |
| STOP_s40_v1_clean.wav | Stop | Plop. | 0.500 |
| STOP_s40_v1_noisy.wav | Stop | flop. | 0.500 |
| STOP_s44_v2_clean.wav | Stop playing | without playing. | 0.741 |
| STOP_s45_v3_noisy.wav | End playback | Begin to play back. | 0.733 |
| STOP_s46_v3_clean.wav | End playback | Ig Playback | 0.783 |
| STOP_s46_v3_noisy.wav | End playback | Ig Playback. | 0.783 |
| STOP_s60_v1_clean.wav | Stop | Packed up. | 0.154 |
| STOP_s60_v1_noisy.wav | Stop | up. | 0.333 |
| STOP_s60_v3_clean.wav | End playback | lay back. | 0.700 |
| STOP_s60_v3_noisy.wav | End playback | lay back. | 0.700 |
| STOP_s62_v3_clean.wav | End playback | and playback, and playback. | 0.595 |
| STOP_s62_v3_noisy.wav | End playback | and playback, and playback. | 0.595 |
| STOP_s75_v1_clean.wav | Stop | Now. | 0.286 |
| STOP_s75_v1_noisy.wav | Stop | out. | 0.286 |
| STOP_s79_v3_clean.wav | End playback | and then playback. | 0.759 |
| STOP_s79_v3_noisy.wav | End playback | and then playback. | 0.759 |
| STOP_s86_v3_noisy.wav | End playback | play back. | 0.762 |
| STOP_s94_v3_clean.wav | End playback | Hmm play back | 0.720 |
| STOP_s94_v3_noisy.wav | End playback | Hmm play back | 0.720 |
