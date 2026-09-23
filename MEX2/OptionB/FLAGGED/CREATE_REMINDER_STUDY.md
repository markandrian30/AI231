# QA Report: CREATE_REMINDER_STUDY

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 25
- **Excluded WAVs (both scores below 0.80)**: 22

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| CREATE_REMINDER_STUDY_s50_v1_noisy.wav | Reminder study | Remind us to study. | 0.750 |
| CREATE_REMINDER_STUDY_s68_v1_clean.wav | Reminder study | Remind us to study. | 0.750 |
| CREATE_REMINDER_STUDY_s68_v1_noisy.wav | Reminder study | Remind us to do it. | 0.625 |
| CREATE_REMINDER_STUDY_s69_v1_noisy.wav | Reminder study | Remind us to study. | 0.750 |
| CREATE_REMINDER_STUDY_s70_v1_clean.wav | Reminder study | Remind us that | 0.643 |
| CREATE_REMINDER_STUDY_s70_v1_noisy.wav | Reminder study | Remind us, Tadi. | 0.714 |
| CREATE_REMINDER_STUDY_s70_v2_clean.wav | Remind me to study | It's my mother's story. | 0.450 |
| CREATE_REMINDER_STUDY_s70_v2_noisy.wav | Remind me to study | In my midst of story. | 0.474 |
| CREATE_REMINDER_STUDY_s75_v1_noisy.wav | Reminder study | Remind the studying. | 0.788 |
| CREATE_REMINDER_STUDY_s75_v2_clean.wav | Remind me to study |  | 0.000 |
| CREATE_REMINDER_STUDY_s75_v2_noisy.wav | Remind me to study |  | 0.000 |
| CREATE_REMINDER_STUDY_s76_v1_clean.wav | Reminder study | We'll mind the study. | 0.706 |
| CREATE_REMINDER_STUDY_s76_v1_noisy.wav | Reminder study | We'll mind the study. | 0.706 |
| CREATE_REMINDER_STUDY_s77_v2_clean.wav | Remind me to study | Grima Amiru study. | 0.514 |
| CREATE_REMINDER_STUDY_s77_v2_noisy.wav | Remind me to study | Grima Amiru study | 0.514 |
| CREATE_REMINDER_STUDY_s78_v1_clean.wav | Reminder study | in a Minded Study. | 0.710 |
| CREATE_REMINDER_STUDY_s78_v1_noisy.wav | Reminder study | in a Minded Study. | 0.710 |
| CREATE_REMINDER_STUDY_s79_v1_clean.wav | Reminder study | So, remind us, Toddy. | 0.688 |
| CREATE_REMINDER_STUDY_s79_v1_noisy.wav | Reminder study | So, remind us, Toddy. | 0.688 |
| CREATE_REMINDER_STUDY_s80_v1_clean.wav | Reminder study | Remind us to study. | 0.750 |
| CREATE_REMINDER_STUDY_s80_v1_noisy.wav | Reminder study | Remind us to study. | 0.750 |
| CREATE_REMINDER_STUDY_s89_v1_clean.wav | Reminder study | I will be back in a minute. Thank you. Have a great week. Bye. Bye. Bye. Bye. Bye. | 0.182 |
| CREATE_REMINDER_STUDY_s89_v1_noisy.wav | Reminder study | We might as well leave. | 0.278 |
| CREATE_REMINDER_STUDY_s8_v1_clean.wav | Reminder study | Vidhan Pride. Reminder study. | 0.683 |
| CREATE_REMINDER_STUDY_s8_v1_noisy.wav | Reminder study | Be done. Pride. Reminders study. | 0.651 |
