# Option B: Spoken Command Dataset

Option B originally contained **18,600 WAV files** and has **17,648 active WAV files after transcription-based filtering**, representing **100 reference speakers: 84 foreign speakers from LibriSpeech and 16 Filipino-English speakers from SilencioPH**. It covers 19 intents, with three phrase variations and two acoustic conditions: clean and light background noise.

## Dataset overview

| Item | Count |
|---|---:|
| Reference speakers | 100 |
| Foreign speakers | 84 |
| Filipino-English speakers | 16 |
| Intents | 19 |
| Intents without slots | 13 |
| Intents with slots | 6 |
| Acoustic conditions per utterance | 2 |
| Active clean WAV files | 8,824 |
| Active noisy WAV files | 8,824 |
| Original WAV files | 18,600 |
| Files moved to REPORT | 952 |
| **Remaining active WAV files** | **17,648** |

These counts describe the source dataset on DGX2 after cleanup on September 17, 2026. GitHub uploads are incremental; the audio and manifest currently uploaded here may reflect an earlier snapshot.

## Speakers

All 100 speaker IDs remain in the active manifest. File totals in the following speaker table describe the original dataset before cleanup.

| Group | Speaker IDs | Speakers | WAV files |
|---|---|---:|---:|
| Foreign (LibriSpeech) | `s1-s67`, `s81-s88`, `s91-s99` | 84 | 15,624 |
| Filipino-English (SilencioPH) | `s68-s80`, `s89-s90`, `s100` | 16 | 2,976 |
| **Total** | `s1-s100` | **100** | **18,600** |

Both groups appear in the same intent folders. Speaker IDs in filenames identify the reference speaker used to generate the audio.

| Metadata split | Foreign speaker IDs | Filipino speaker IDs | Total speakers |
|---|---|---|---:|
| Train | `s1-s67` | `s68-s80` | 80 |
| Validation | `s81-s88` | `s89-s90` | 10 |
| Test | `s91-s99` | `s100` | 10 |

## Acoustic conditions

| Filename suffix | Condition | Files |
|---|---|---:|
| `_clean.wav` | Clean speech | 8,824 |
| `_noisy.wav` | Speech with light background noise; target approximately 30 dB SNR | 8,824 |

Each base utterance has both conditions. The `v1`, `v2`, and `v3` tokens identify phrase variations, not acoustic conditions.

## Transcription-based quality checking and filtering
The transcription workflow used [simple-audio-transcriber by Martinnavs](https://github.com/Martinnavs/simple-audio-transcriber). The dataset-specific checking script runs Faster-Whisper (`small`, CPU, int8) and compares each transcription with its expected phrase using normalized text similarity. Scores below **0.80** are flagged for review; this score measures text similarity, not model confidence or audio quality directly.

Formatting-only differences such as `20%` versus `20 percent` were reviewed and removed from the brightness flagged lists before filtering. The paired-condition filtering rule below is specific to this dataset.

Cleanup completed on **September 17, 2026**. Counts were checked against the active audio files, manifest, and cleanup archive on DGX2.

| Result | Count |
|---|---:|
| Original WAV files | 18,600 |
| Files removed from the active dataset and moved to REPORT | 952 |
| Complete clean/noisy pairs moved | 476 |
| **Remaining active WAV files** | **17,648** |
| Remaining clean files | 8,824 |
| Remaining noisy files | 8,824 |
| Phrase groups flagged in only one condition and retained | 121 |
| Pairs skipped because files were missing | 0 |

A phrase variation is removed from the active dataset only when **both its clean and noisy recordings are flagged**. If just one condition is flagged, both recordings remain. Removed files are archived under `REPORT/<folder>/`; they are not permanently deleted. The cleanup also filters the source manifest to the remaining files.

### Original, removed, and remaining files per data folder

Each row represents one data folder: either an intent without slots or an individual intent-slot combination. The six variable intents are shown separately by slot value, giving **31 folders across 19 intents**.

| Intent / slot folder | Original WAV files | Removed to REPORT | Remaining active WAV files |
|---|---:|---:|---:|
| `PLAY_MUSIC` | 600 | 32 | 568 |
| `WEATHER` | 600 | 56 | 544 |
| `TIME` | 600 | 52 | 548 |
| `LIGHT_ON` | 600 | 30 | 570 |
| `LIGHT_OFF` | 600 | 22 | 578 |
| `PAUSE` | 600 | 104 | 496 |
| `STOP` | 600 | 68 | 532 |
| `NEXT` | 600 | 80 | 520 |
| `VOLUME_UP` | 600 | 34 | 566 |
| `VOLUME_DOWN` | 600 | 20 | 580 |
| `CALL` | 600 | 102 | 498 |
| `MESSAGE` | 600 | 72 | 528 |
| `LIST_REMINDERS` | 600 | 42 | 558 |
| `TIMER_10s` | 600 | 12 | 588 |
| `TIMER_30s` | 600 | 6 | 594 |
| `TIMER_1m` | 600 | 32 | 568 |
| `ALARM_6_00AM` | 600 | 16 | 584 |
| `ALARM_8_00AM` | 600 | 14 | 586 |
| `ALARM_9_00PM` | 600 | 16 | 584 |
| `TEMPERATURE_18` | 600 | 2 | 598 |
| `TEMPERATURE_22` | 600 | 0 | 600 |
| `TEMPERATURE_26` | 600 | 2 | 598 |
| `BRIGHTNESS_20` | 600 | 14 | 586 |
| `BRIGHTNESS_60` | 600 | 10 | 590 |
| `BRIGHTNESS_100` | 600 | 6 | 594 |
| `COLOR_RED` | 600 | 32 | 568 |
| `COLOR_BLUE` | 600 | 10 | 590 |
| `COLOR_GREEN` | 600 | 22 | 578 |
| `REMINDER_DRINK_WATER` | 600 | 4 | 596 |
| `REMINDER_STUDY` | 600 | 22 | 578 |
| `REMINDER_CALL_HOME` | 600 | 18 | 582 |
| **Total** | **18,600** | **952** | **17,648** |

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

`<FOLDER_NAME>_s<speaker>_v<phrase variation>_<condition>.wav`

Example: `BRIGHTNESS_100/BRIGHTNESS_100_s68_v3_noisy.wav`

| Component | Meaning |
|---|---|
| `BRIGHTNESS_100/` | Intent folder with the 100-percent slot value |
| `BRIGHTNESS_100` | Folder name: intent and slot value |
| `s68` | Reference speaker 68, Filipino-English |
| `v3` | Third phrase variation |
| `noisy` | Acoustic condition |

The source WAV files were renamed after QA to match their containing folders. Manifest paths and QA report references were updated to the same names. Earlier GitHub snapshots may still use the previous names.

## Metadata

- `manifest.csv`: relative audio paths, intent, speaker, split, phrase variation, acoustic condition, transcript, slot value, and duration.
- `labels.json` and `slots.json`: intent and slot definitions.
- `OPTIONB_DATA_SUMMARY.md` and `dataset_design.txt`: supporting dataset documentation.

Resolve manifest paths relative to this directory. Split assignments are recorded in metadata; audio is organized by intent and slot value.
