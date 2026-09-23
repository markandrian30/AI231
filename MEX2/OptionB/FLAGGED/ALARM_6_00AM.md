# QA Report: ALARM_6_00AM

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 17
- **Excluded WAVs (both scores below 0.80)**: 16

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| ALARM_6_00AM_s38_v1_clean.wav | Alarm 6 AM | Flemers, 6 a.m. | 0.609 |
| ALARM_6_00AM_s38_v1_noisy.wav | Alarm 6 AM | Flemers, 6 a.m. | 0.609 |
| ALARM_6_00AM_s5_v3_clean.wav | Set an alarm for 6 AM | Set in the warm for 6 a.m. | 0.783 |
| ALARM_6_00AM_s5_v3_noisy.wav | Set an alarm for 6 AM | Set in the warm for 6 a.m. | 0.783 |
| ALARM_6_00AM_s68_v3_clean.wav | Set an alarm for 6 AM | sitting along for 6 a.m. | 0.682 |
| ALARM_6_00AM_s68_v3_noisy.wav | Set an alarm for 6 AM | sitting along for 6 a.m. | 0.682 |
| ALARM_6_00AM_s70_v2_clean.wav | Wake me up at 6 AM | with me at 6 a.m. | 0.706 |
| ALARM_6_00AM_s70_v2_noisy.wav | Wake me up at 6 AM | with me at 6 a.m. | 0.706 |
| ALARM_6_00AM_s74_v1_clean.wav | Alarm 6 AM | Alarm's the same. | 0.692 |
| ALARM_6_00AM_s74_v1_noisy.wav | Alarm 6 AM | almost the same | 0.560 |
| ALARM_6_00AM_s76_v3_clean.wav | Set an alarm for 6 AM | Setting it on for 6am. | 0.619 |
| ALARM_6_00AM_s76_v3_noisy.wav | Set an alarm for 6 AM | Sutton it on for 6 a.m. | 0.605 |
| ALARM_6_00AM_s86_v1_clean.wav | Alarm 6 AM | 6 am. | 0.571 |
| ALARM_6_00AM_s86_v1_noisy.wav | Alarm 6 AM | 6 a.m. | 0.533 |
| ALARM_6_00AM_s89_v2_clean.wav | Wake me up at 6 AM | Wait me up, it's 6 a.m. | 0.769 |
| ALARM_6_00AM_s99_v3_clean.wav | Set an alarm for 6 AM | setting the alarm for 6 a.m. | 0.792 |
| ALARM_6_00AM_s99_v3_noisy.wav | Set an alarm for 6 AM | setting the alarm for 6 a.m. | 0.792 |
