# QA Report: ALARM_9_00PM

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 19
- **Excluded WAVs (both scores below 0.80)**: 16

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| ALARM_9_00PM_s39_v1_clean.wav | Alarm 9 PM | From 9 p.m. | 0.700 |
| ALARM_9_00PM_s39_v1_noisy.wav | Alarm 9 PM | From 9 p.m. | 0.700 |
| ALARM_9_00PM_s68_v1_clean.wav | Alarm 9 PM | Hello, 9 p.m. | 0.571 |
| ALARM_9_00PM_s68_v1_noisy.wav | Alarm 9 PM | Around 9 p.m. | 0.636 |
| ALARM_9_00PM_s68_v2_clean.wav | Wake me up at 9 PM | Check me up at 9 p.m. | 0.789 |
| ALARM_9_00PM_s68_v2_noisy.wav | Wake me up at 9 PM | Check me up at 9 p.m. | 0.789 |
| ALARM_9_00PM_s69_v1_clean.wav | Alarm 9 PM | Around 9pm | 0.600 |
| ALARM_9_00PM_s69_v1_noisy.wav | Alarm 9 PM | Adhan 9 p.m. | 0.667 |
| ALARM_9_00PM_s70_v1_clean.wav | Alarm 9 PM | Allahumma Impeen | 0.462 |
| ALARM_9_00PM_s70_v1_noisy.wav | Alarm 9 PM | Allahumma Impeen | 0.462 |
| ALARM_9_00PM_s70_v3_noisy.wav | Set an alarm for 9 PM | It's at an alarm from 9 p.m. | 0.792 |
| ALARM_9_00PM_s71_v2_noisy.wav | Wake me up at 9 PM | with me about 9 p.m. | 0.649 |
| ALARM_9_00PM_s72_v1_clean.wav | Alarm 9 PM | Alarm mind p.m. | 0.750 |
| ALARM_9_00PM_s72_v1_noisy.wav | Alarm 9 PM | Alarm mind p.m | 0.750 |
| ALARM_9_00PM_s89_v3_clean.wav | Set an alarm for 9 PM | I'm setting the alarm for 9pm. | 0.720 |
| ALARM_9_00PM_s90_v3_clean.wav | Set an alarm for 9 PM | Second alarm from 9 p.m. | 0.773 |
| ALARM_9_00PM_s90_v3_noisy.wav | Set an alarm for 9 PM | Second alarm from 9 p.m. | 0.773 |
| ALARM_9_00PM_s96_v2_clean.wav | Wake me up at 9 PM | Click me up at 9 p.m. | 0.789 |
| ALARM_9_00PM_s96_v2_noisy.wav | Wake me up at 9 PM | Click me up at 9 p.m. | 0.789 |
