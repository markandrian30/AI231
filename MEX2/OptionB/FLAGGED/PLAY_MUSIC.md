# QA Report: PLAY_MUSIC

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 10
- **Excluded WAVs (both scores below 0.80)**: 4

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| PLAY_MUSIC_s21_v1_clean.wav | Play music | CLE MUSIC! | 0.737 |
| PLAY_MUSIC_s21_v1_noisy.wav | Play music | to the music. | 0.545 |
| PLAY_MUSIC_s21_v2_noisy.wav | Start music | It's a dark music. | 0.643 |
| PLAY_MUSIC_s36_v3_clean.wav | Play some music | Place the music. | 0.733 |
| PLAY_MUSIC_s46_v2_noisy.wav | Start music | point, dark music. | 0.667 |
| PLAY_MUSIC_s68_v3_noisy.wav | Play some music | place of music. | 0.759 |
| PLAY_MUSIC_s76_v2_noisy.wav | Start music | about music. | 0.727 |
| PLAY_MUSIC_s79_v2_noisy.wav | Start music | That's music. | 0.609 |
| PLAY_MUSIC_s91_v1_clean.wav | Play music | Clawiddle A Music | 0.593 |
| PLAY_MUSIC_s91_v1_noisy.wav | Play music | Climb out of there, music. | 0.412 |
