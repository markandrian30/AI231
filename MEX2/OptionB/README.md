# Option B: Spoken Command Dataset

Option B contains **18,600 WAV files** representing **100 reference speakers: 84 foreign speakers from LibriSpeech and 16 Filipino-English speakers from SilencioPH**. It covers 19 intents, with three phrase variations and two acoustic conditions: clean and light background noise.

## Dataset overview

| Item | Count |
|---|---:|
| Reference speakers | 100 |
| Foreign speakers | 84 |
| Filipino-English speakers | 16 |
| Intents | 19 |
| Intents without slots | 13 |
| Intents with slots | 6 |
| Phrase variations per intent/slot combination | 3 |
| Slot values per variable intent | 3 |
| Acoustic conditions per utterance | 2 |
| Data folders | 31 |
| WAV files per data folder | 600 |
| Base utterances per speaker | 93 |
| WAV files per speaker | 186 |
| Clean WAV files | 9,300 |
| Noisy WAV files | 9,300 |
| **Total WAV files** | **18,600** |

These counts describe the full dataset. Audio folders are being uploaded incrementally; the full manifest may reference files not yet available in this repository.

## Speakers

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
| `_clean.wav` | Clean speech | 9,300 |
| `_noisy.wav` | Speech with light background noise; target approximately 30 dB SNR | 9,300 |

Each base utterance has both conditions. The `v1`, `v2`, and `v3` tokens identify phrase variations, not acoustic conditions.

## Files per intent

An intent without slots has **100 speakers x 3 phrases x 2 conditions = 600 files**.

An intent with slots has **100 speakers x 3 slot values x 3 phrases x 2 conditions = 1,800 files**, divided into three folders of 600 files each.

| Intent | Slot values | Data folders | Clean | Noisy | Total WAV files |
|---|---|---:|---:|---:|---:|
| PLAY_MUSIC | None | 1 | 300 | 300 | 600 |
| WEATHER | None | 1 | 300 | 300 | 600 |
| TIME | None | 1 | 300 | 300 | 600 |
| LIGHT_ON | None | 1 | 300 | 300 | 600 |
| LIGHT_OFF | None | 1 | 300 | 300 | 600 |
| PAUSE | None | 1 | 300 | 300 | 600 |
| STOP | None | 1 | 300 | 300 | 600 |
| NEXT | None | 1 | 300 | 300 | 600 |
| VOLUME_UP | None | 1 | 300 | 300 | 600 |
| VOLUME_DOWN | None | 1 | 300 | 300 | 600 |
| CALL | None | 1 | 300 | 300 | 600 |
| MESSAGE | None | 1 | 300 | 300 | 600 |
| LIST_REMINDERS | None | 1 | 300 | 300 | 600 |
| TIMER | 10 seconds; 30 seconds; 1 minute | 3 | 900 | 900 | 1,800 |
| ALARM | 6 AM; 8 AM; 9 PM | 3 | 900 | 900 | 1,800 |
| TEMPERATURE | 18; 22; 26 degrees | 3 | 900 | 900 | 1,800 |
| BRIGHTNESS | 20; 60; 100 percent | 3 | 900 | 900 | 1,800 |
| COLOR | Red; blue; green | 3 | 900 | 900 | 1,800 |
| CREATE_REMINDER | Drink water; study; call home | 3 | 900 | 900 | 1,800 |
| **Total** | | **31** | **9,300** | **9,300** | **18,600** |

For each speaker, the 13 fixed intents produce 39 base utterances and the six variable intents produce 54. Together, this gives 93 base utterances and 186 WAV files after adding both acoustic conditions.

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

Example: `BRIGHTNESS_100/BRIGHTNESS_s68_v3_noisy.wav`

| Component | Meaning |
|---|---|
| `BRIGHTNESS_100/` | Intent folder with the 100-percent slot value |
| `BRIGHTNESS` | Intent |
| `s68` | Reference speaker 68, Filipino-English |
| `v3` | Third phrase variation |
| `noisy` | Acoustic condition |

Preserve folder paths when identifying files: variable-intent filenames can repeat across slot folders.

## Metadata

- `manifest.csv`: relative audio paths, intent, speaker, split, phrase variation, acoustic condition, transcript, slot value, and duration.
- `labels.json` and `slots.json`: intent and slot definitions.
- `OPTIONB_DATA_SUMMARY.md` and `dataset_design.txt`: supporting dataset documentation.

Resolve manifest paths relative to this directory. Split assignments are recorded in metadata; audio is organized by intent and slot value.
