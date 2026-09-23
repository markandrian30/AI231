# QA Report: NEXT

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 11
- **Excluded WAVs (both scores below 0.80)**: 2

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| NEXT_s100_v2_noisy.wav | Skip song | It's all. | 0.353 |
| NEXT_s28_v1_clean.wav | Next song | Put next on. | 0.700 |
| NEXT_s46_v2_clean.wav | Skip song | Hipsong. | 0.750 |
| NEXT_s4_v1_noisy.wav | Next song | Ho-ho-ho, next song. | 0.667 |
| NEXT_s69_v2_clean.wav | Skip song | Skip some. | 0.778 |
| NEXT_s70_v3_clean.wav | Play next song | the next song | 0.741 |
| NEXT_s70_v3_noisy.wav | Play next song | the next song | 0.741 |
| NEXT_s78_v2_noisy.wav | Skip song | Keeps on | 0.471 |
| NEXT_s79_v1_noisy.wav | Next song | next time. | 0.556 |
| NEXT_s82_v1_clean.wav | Next song | The next zone. | 0.636 |
| NEXT_s83_v2_clean.wav | Skip song | Tips on | 0.625 |
