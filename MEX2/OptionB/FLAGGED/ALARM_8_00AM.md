# QA Report: ALARM_8_00AM

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 17
- **Excluded WAVs (both scores below 0.80)**: 14

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| ALARM_8_00AM_s4_v1_clean.wav | Alarm 8 AM | Quell 8 a.m. | 0.571 |
| ALARM_8_00AM_s4_v1_noisy.wav | Alarm 8 AM | Quell 8 a.m. | 0.571 |
| ALARM_8_00AM_s50_v1_clean.wav | Alarm 8 AM | Alam, I tell you | 0.480 |
| ALARM_8_00AM_s50_v1_noisy.wav | Alarm 8 AM | Allahumma Ta'ala | 0.231 |
| ALARM_8_00AM_s5_v2_noisy.wav | Wake me up at 8 AM | Break me up an idiot. | 0.579 |
| ALARM_8_00AM_s75_v3_clean.wav | Set an alarm for 8 AM |  | 0.000 |
| ALARM_8_00AM_s75_v3_noisy.wav | Set an alarm for 8 AM |  | 0.000 |
| ALARM_8_00AM_s76_v1_clean.wav | Alarm 8 AM | Alarm ETM. | 0.737 |
| ALARM_8_00AM_s79_v1_clean.wav | Alarm 8 AM | Allam A.A.M. | 0.762 |
| ALARM_8_00AM_s79_v1_noisy.wav | Alarm 8 AM | Alam A.M. | 0.778 |
| ALARM_8_00AM_s7_v1_clean.wav | Alarm 8 AM | Yeah. Alarm 8AM | 0.750 |
| ALARM_8_00AM_s7_v1_noisy.wav | Alarm 8 AM | Yeah. Alarm 8 a.m. | 0.769 |
| ALARM_8_00AM_s83_v1_clean.wav | Alarm 8 AM | Hillarm, A.A.M. | 0.696 |
| ALARM_8_00AM_s91_v1_clean.wav | Alarm 8 AM | We'll arm 8 a.m. | 0.720 |
| ALARM_8_00AM_s91_v1_noisy.wav | Alarm 8 AM | will arm 8 a.m. | 0.750 |
| ALARM_8_00AM_s96_v1_clean.wav | Alarm 8 AM | I'm arm 8 a.m. | 0.696 |
| ALARM_8_00AM_s96_v1_noisy.wav | Alarm 8 AM | I'm arm 8am. | 0.667 |
