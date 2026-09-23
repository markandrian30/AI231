# QA Report: CREATE_REMINDER_EXERCISE

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 10
- **Excluded WAVs (both scores below 0.80)**: 8

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| CREATE_REMINDER_EXERCISE_s46_v1_clean.wav | Reminder exercise | Chair. Exercise. | 0.710 |
| CREATE_REMINDER_EXERCISE_s46_v1_noisy.wav | Reminder exercise | Cheer, Exercise! | 0.774 |
| CREATE_REMINDER_EXERCISE_s70_v1_clean.wav | Reminder exercise | upper mind exercise | 0.778 |
| CREATE_REMINDER_EXERCISE_s70_v1_noisy.wav | Reminder exercise | upper mind exercise. | 0.778 |
| CREATE_REMINDER_EXERCISE_s74_v1_clean.wav | Reminder exercise | in mind that exercise. | 0.684 |
| CREATE_REMINDER_EXERCISE_s74_v1_noisy.wav | Reminder exercise | in mind that exercise. | 0.684 |
| CREATE_REMINDER_EXERCISE_s75_v1_noisy.wav | Reminder exercise | You know, reminder exercise. | 0.791 |
| CREATE_REMINDER_EXERCISE_s7_v1_clean.wav | Reminder exercise | through mind or exercise. | 0.732 |
| CREATE_REMINDER_EXERCISE_s7_v1_noisy.wav | Reminder exercise | through mind or exercise. | 0.732 |
| CREATE_REMINDER_EXERCISE_s89_v1_clean.wav | Reminder exercise | to the mind to exercise. | 0.700 |
