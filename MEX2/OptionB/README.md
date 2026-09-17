# Option B: Spoken Command Dataset

This directory contains the first upload of Option B: **600 CALL WAV files** and the dataset's top-level metadata and runtime snapshot files. The complete dataset described below has 18,600 WAV files across 31 data folders; the other 30 data folders and `REPORT/` are not included in this upload.

## Included in this upload

| Content | Description |
|---|---|
| `CALL/` | 600 WAV files: 100 speakers, 3 phrases, clean and noisy conditions |
| `manifest.csv` | Full-dataset manifest with 18,600 rows; only its 600 CALL paths are available here |
| `OPTIONB_DATA_SUMMARY.md` | Source summary used for this README |
| `dataset_design.txt` | Full-dataset design and expected counts |
| `labels.json`, `slots.json` | Intent and slot definitions copied from DGX2 |
| `download.log`, `state`, `job.pid` | Historical runtime snapshots, not live QA status |
| `.chatterbox_dataset5`, `.lock` | Original dataset marker and lock file snapshots |

To use this partial upload, select manifest rows with `label == "CALL"` and resolve their `path` relative to this directory.

## CALL subset

| Item | Value |
|---|---|
| Files | 600 (300 clean, 300 noisy) |
| Speakers | 100 (84 LibriSpeech, 16 Filipino-English) |
| Files per speaker | 6 |
| v1 | Call |
| v2 | Make a call |
| v3 | Make a phone call |
| Train / validation / test files | 480 / 60 / 60, according to the manifest |
| Filename example | `CALL_s68_v2_noisy.wav` |

Files retain their original names. `s68` identifies the speaker, `v2` identifies the phrase variation, and `noisy` identifies the acoustic condition.

## Snapshot notes

- Copied from DGX2 on September 17, 2026. The following summary describes the full source dataset, not the amount of audio included in this GitHub upload.
- `slots.json` uses 9 PM for the third alarm value, matching the source summary and current manifest.
- Runtime files can be stale: the included `download.log` records a missing `optionb.sh` command. They do not indicate whether the separate QA job is currently running or complete.
- Reference recordings and speaker metadata mentioned by the dataset summary are not included in this upload.

## Full dataset summary

## Dataset overview

| Item                        | Summary                                |
| --------------------------- | -------------------------------------- |
| Server                      | DGX2                                   |
| Dataset path                |                                        |
| Total intents               | 19                                     |
| Data folders                | 31, plus a separate `REPORT` folder    |
| Fixed intents               | 13 folders                             |
| Variable intents            | 6 intents × 3 slot values = 18 folders |
| Phrase variations           | 3 per intent/slot combination          |
| Acoustic conditions         | `clean` and `noisy`                    |
| WAV files per data folder   | 600                                    |
| Clean WAV files             | 9,300                                  |
| Noisy WAV files             | 9,300                                  |
| **Total WAV files**         | **18,600**                             |
| Total speakers              | 100                                    |
| Base utterances per speaker | 93                                     |
| WAV files per speaker       | 186                                    |

Each folder contains 100 speakers × 3 phrase variations × 2 acoustic conditions = 600 files.

## Speaker groups

| Group                         | Speaker IDs                    | Speakers | WAV files  |
| ----------------------------- | ------------------------------ | -------: | ---------: |
| Foreign (LibriSpeech)         | `s1–s67`, `s81–s88`, `s91–s99` |       84 |     15,624 |
| Filipino-English (SilencioPH) | `s68–s80`, `s89–s90`, `s100`   |       16 |      2,976 |
| **Total**                     | `s1–s100`                      |  **100** | **18,600** |

Filipino-English audio is distributed across the same 31 data folders. Identify it using the speaker IDs in the filenames.

## Speaker split assignments

| Metadata split | Foreign speaker IDs | Filipino speaker IDs | Foreign | Filipino | Total speakers |
| -------------- | ------------------- | -------------------- | ------: | -------: | -------------: |
| Train          | `s1–s67`            | `s68–s80`            |      67 |       13 |             80 |
| Validation     | `s81–s88`           | `s89–s90`            |       8 |        2 |             10 |
| Test           | `s91–s99`           | `s100`               |       9 |        1 |             10 |

Filipino speakers appear in all three metadata splits. Files are organized by intent/slot folders, not physical train/validation/test directories. These assignments come from speaker metadata; whether the training loader follows them has not been checked.

## Data folders

All folders listed below contain 600 WAV files each.

| Group         | Folder names                                                                                                                                       | Group WAV total |
| ------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | --------------: |
| Fixed intents | `PLAY_MUSIC`, `WEATHER`, `TIME`, `LIGHT_ON`, `LIGHT_OFF`, `PAUSE`, `STOP`, `NEXT`, `VOLUME_UP`, `VOLUME_DOWN`, `CALL`, `MESSAGE`, `LIST_REMINDERS` |           7,800 |
| Alarm         | `ALARM_6_00AM`, `ALARM_8_00AM`, `ALARM_9_00PM`                                                                                                     |           1,800 |
| Timer         | `TIMER_10s`, `TIMER_30s`, `TIMER_1m`                                                                                                               |           1,800 |
| Temperature   | `TEMPERATURE_18`, `TEMPERATURE_22`, `TEMPERATURE_26`                                                                                               |           1,800 |
| Brightness    | `BRIGHTNESS_20`, `BRIGHTNESS_60`, `BRIGHTNESS_100`                                                                                                 |           1,800 |
| Color         | `COLOR_RED`, `COLOR_BLUE`, `COLOR_GREEN`                                                                                                           |           1,800 |
| Reminder      | `REMINDER_DRINK_WATER`, `REMINDER_STUDY`, `REMINDER_CALL_HOME`                                                                                     |           1,800 |

## Phrase variations

| Intent / group    | v1                    | v2                                  | v3                                 |
| ----------------- | --------------------- | ----------------------------------- | ---------------------------------- |
| `PLAY_MUSIC`      | Play music            | Play a song                         | Start the music                    |
| `WEATHER`         | Weather               | What's the weather?                 | Tell me the weather                |
| `TIME`            | Time                  | What time is it?                    | Tell me the time                   |
| `LIGHT_ON`        | Lights on             | Power on the lights                 | Turn on the lights                 |
| `LIGHT_OFF`       | Lights off            | Kill the lights                     | Turn off the lights                |
| `PAUSE`           | Pause                 | Pause the music                     | Pause this song                    |
| `STOP`            | Stop song             | Stop music                          | Stop playing music                 |
| `NEXT`            | Skip song             | Next song                           | Play next song                     |
| `VOLUME_UP`       | Volume up             | Increase the volume                 | Turn the volume up                 |
| `VOLUME_DOWN`     | Volume down           | Decrease the volume                 | Turn the volume down               |
| `CALL`            | Call                  | Make a call                         | Make a phone call                  |
| `MESSAGE`         | Message               | Send a message                      | Send my message                    |
| `LIST_REMINDERS`  | Reminders             | Show my reminders                   | List my reminders                  |
| `TIMER`           | Timer {duration}      | Countdown for {duration}            | Start a timer for {duration}       |
| `ALARM`           | Alarm {time}          | Wake me up at {time}                | Set an alarm for {time}            |
| `TEMPERATURE`     | Temperature {degrees} | Change the temperature to {degrees} | Set the temperature to {degrees}   |
| `BRIGHTNESS`      | Brightness {percent}  | Set the brightness to {percent}     | Change the brightness to {percent} |
| `COLOR`           | Color {color}         | Change the lights to {color}        | Set the lights to {color}          |
| `CREATE_REMINDER` | Reminder {task}       | Remind me to {task}                 | Create a reminder to {task}        |

### Slot values

| Intent            | Slot         | Values                              |
| ----------------- | ------------ | ----------------------------------- |
| `TIMER`           | `{duration}` | 10 seconds; 30 seconds; 1 minute    |
| `ALARM`           | `{time}`     | 6 AM; 8 AM; 9 PM                    |
| `TEMPERATURE`     | `{degrees}`  | 18 degrees; 22 degrees; 26 degrees  |
| `BRIGHTNESS`      | `{percent}`  | 20 percent; 60 percent; 100 percent |
| `COLOR`           | `{color}`    | red; blue; green                    |
| `CREATE_REMINDER` | `{task}`     | drink water; study; call home       |

## Filename convention

`<INTENT>_s<speaker>_v<phrase variation>_<condition>.wav`

| Component        | Meaning                                                                      |
| ---------------- | ---------------------------------------------------------------------------- |
| Example          | `CALL/CALL_s68_v2_noisy.wav`                                                 |
| `CALL`           | Intent                                                                       |
| `s68`            | Speaker 68, Filipino-English                                                 |
| `v1`, `v2`, `v3` | Phrase variations 1, 2, and 3                                                |
| `clean`, `noisy` | Acoustic condition                                                           |
| Slot value       | Encoded in the containing folder, e.g. `ALARM_6_00AM/ALARM_s68_v1_clean.wav` |
