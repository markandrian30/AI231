# QA Report: VOLUME_DOWN

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 25
- **Excluded WAVs (both scores below 0.80)**: 22

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| VOLUME_DOWN_s34_v1_clean.wav | Volume down | Falling down. | 0.522 |
| VOLUME_DOWN_s34_v1_noisy.wav | Volume down | Falling down. | 0.522 |
| VOLUME_DOWN_s3_v1_clean.wav | Volume down | being down. | 0.571 |
| VOLUME_DOWN_s3_v1_noisy.wav | Volume down | being down. | 0.571 |
| VOLUME_DOWN_s5_v1_clean.wav | Volume down | Follow him down. | 0.615 |
| VOLUME_DOWN_s68_v1_clean.wav | Volume down | Fold him down. | 0.667 |
| VOLUME_DOWN_s68_v1_noisy.wav | Volume down | Pull him down. | 0.583 |
| VOLUME_DOWN_s68_v3_clean.wav | Turn the volume down | It's on the volume now. | 0.762 |
| VOLUME_DOWN_s70_v1_clean.wav | Volume down | Um, mornin' down. | 0.560 |
| VOLUME_DOWN_s70_v1_noisy.wav | Volume down | Um, rollin' down. | 0.560 |
| VOLUME_DOWN_s75_v3_clean.wav | Turn the volume down | Really volume down. | 0.737 |
| VOLUME_DOWN_s75_v3_noisy.wav | Turn the volume down | Really volume down | 0.737 |
| VOLUME_DOWN_s76_v1_clean.wav | Volume down | Roll him down. | 0.667 |
| VOLUME_DOWN_s76_v1_noisy.wav | Volume down | Roll him down. | 0.667 |
| VOLUME_DOWN_s76_v2_clean.wav | Lower the volume | No other volume. | 0.774 |
| VOLUME_DOWN_s76_v2_noisy.wav | Lower the volume | No other volume. | 0.774 |
| VOLUME_DOWN_s86_v1_clean.wav | Volume down | Stuff, volume down. | 0.786 |
| VOLUME_DOWN_s94_v1_clean.wav | Volume down | down | 0.533 |
| VOLUME_DOWN_s94_v1_noisy.wav | Volume down | down | 0.533 |
| VOLUME_DOWN_s94_v2_clean.wav | Lower the volume | lower the volume and T du S. | 0.744 |
| VOLUME_DOWN_s94_v2_noisy.wav | Lower the volume | lower the volume and T due S. | 0.727 |
| VOLUME_DOWN_s96_v1_clean.wav | Volume down | I'll all you down. | 0.500 |
| VOLUME_DOWN_s96_v1_noisy.wav | Volume down | I'll all you down. | 0.500 |
| VOLUME_DOWN_s99_v1_clean.wav | Volume down | I'll you down. | 0.583 |
| VOLUME_DOWN_s99_v1_noisy.wav | Volume down | I'll you down. | 0.583 |
