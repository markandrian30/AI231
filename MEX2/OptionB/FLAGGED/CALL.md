# QA Report: CALL

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Device**: CPU int8
- **Date**: 2026-09-22
- **Excluded WAVs (both scores below 0.80)**: 38
- **Flagged WAVs**: 55

- **Cleanup policy**: move both files only if BOTH clean and noisy score below 0.80. Single-condition failures retain both recordings.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| CALL_s1_v1_clean.wav | Call | Okay, I'll... | 0.462 |
| CALL_s1_v1_noisy.wav | Call | Okay, I'll... | 0.462 |
| CALL_s2_v1_clean.wav | Call | Carl. | 0.750 |
| CALL_s2_v1_noisy.wav | Call | Carl. | 0.750 |
| CALL_s4_v1_clean.wav | Call | It's all. | 0.500 |
| CALL_s4_v1_noisy.wav | Call | It's all. | 0.500 |
| CALL_s6_v1_clean.wav | Call | Oh | 0.000 |
| CALL_s6_v1_noisy.wav | Call | Oh | 0.000 |
| CALL_s7_v2_clean.wav | Place a call | Maybe it's a call. | 0.621 |
| CALL_s7_v2_noisy.wav | Place a call | Maybe it's a call. | 0.621 |
| CALL_s12_v1_clean.wav | Call | I'll call. | 0.615 |
| CALL_s12_v1_noisy.wav | Call | What the hell? | 0.353 |
| CALL_s13_v1_clean.wav | Call | next call. | 0.615 |
| CALL_s13_v1_noisy.wav | Call | next call. | 0.615 |
| CALL_s14_v1_clean.wav | Call | Hall. | 0.750 |
| CALL_s15_v2_noisy.wav | Place a call | please call. | 0.783 |
| CALL_s16_v1_clean.wav | Call | Coal. | 0.750 |
| CALL_s22_v1_clean.wav | Call | Colg | 0.500 |
| CALL_s28_v1_noisy.wav | Call | Oh | 0.000 |
| CALL_s39_v1_clean.wav | Call | Co. | 0.333 |
| CALL_s40_v1_clean.wav | Call | tall. | 0.750 |
| CALL_s46_v1_clean.wav | Call | Oh | 0.000 |
| CALL_s46_v1_noisy.wav | Call | Oh | 0.000 |
| CALL_s47_v1_noisy.wav | Call | Hall. | 0.750 |
| CALL_s51_v1_noisy.wav | Call | at the call. | 0.533 |
| CALL_s54_v1_clean.wav | Call | COW | 0.286 |
| CALL_s60_v1_clean.wav | Call | It's all. | 0.500 |
| CALL_s60_v1_noisy.wav | Call | That's all. | 0.429 |
| CALL_s65_v1_clean.wav | Call | Cole. | 0.500 |
| CALL_s66_v1_noisy.wav | Call | Be cool. | 0.364 |
| CALL_s67_v1_clean.wav | Call | Paul. | 0.500 |
| CALL_s67_v1_noisy.wav | Call | Paul. | 0.500 |
| CALL_s69_v2_clean.wav | Place a call | Say your call | 0.560 |
| CALL_s69_v2_noisy.wav | Place a call | Say your call. | 0.560 |
| CALL_s70_v1_noisy.wav | Call | Goal. | 0.500 |
| CALL_s70_v2_clean.wav | Place a call | Play saccord. | 0.417 |
| CALL_s70_v2_noisy.wav | Place a call | Let's record. | 0.167 |
| CALL_s72_v2_clean.wav | Place a call | Please call. | 0.783 |
| CALL_s72_v2_noisy.wav | Place a call | Please recall. | 0.720 |
| CALL_s74_v1_noisy.wav | Call | on | 0.000 |
| CALL_s74_v2_clean.wav | Place a call | Lays are gone. | 0.320 |
| CALL_s75_v1_clean.wav | Call |  | 0.000 |
| CALL_s75_v1_noisy.wav | Call | You | 0.000 |
| CALL_s76_v1_noisy.wav | Call | Calm. | 0.750 |
| CALL_s76_v2_clean.wav | Place a call | Peace of core. | 0.560 |
| CALL_s76_v2_noisy.wav | Place a call | Peace of core. | 0.560 |
| CALL_s77_v2_clean.wav | Place a call | Place a cork. | 0.750 |
| CALL_s86_v1_clean.wav | Call | So. | 0.000 |
| CALL_s86_v1_noisy.wav | Call | So. | 0.000 |
| CALL_s90_v2_clean.wav | Place a call | Please call. | 0.783 |
| CALL_s90_v2_noisy.wav | Place a call | Please call. | 0.783 |
| CALL_s92_v1_clean.wav | Call | whole. | 0.222 |
| CALL_s92_v1_noisy.wav | Call | hole. | 0.250 |
| CALL_s97_v1_clean.wav | Call | fall | 0.750 |
| CALL_s97_v1_noisy.wav | Call | Paul. | 0.500 |
