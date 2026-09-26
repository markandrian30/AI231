# Option B: Spoken Command Dataset

- **100 speakers:** 84 foreign and 16 Filipino-English.
- **13 fixed intents:** 3 phrases each.
- **6 variable intents:** 3 phrase templates x 3 slot values = 9 utterances each; COLOR has 4 slot values = 12 utterances.
- **Two acoustic conditions:** clean and light background noise.
- **19,200 original files; 18,375 remaining after filtering.**
  - **Transcriber used:** [simple-audio-transcriber by Martinnavs](https://github.com/Martinnavs/simple-audio-transcriber)

## Dataset overview

| Item | Count |
|---|---:|
| Reference speakers | 100 |
| Foreign speakers ([LibriSpeech](https://www.openslr.org/12), [small subsets](https://www.openslr.org/31)) | 84 |
| Filipino-English speakers ([SilencioPH](https://huggingface.co/datasets/SilencioNetwork/tagalog-filipino-speech)) | 16 |
| Intents | 19 |
| Intents without slots | 13 |
| Intents with slots | 6 |
| Acoustic conditions per utterance | 2 |
| Active clean WAV files | 9,192 |
| Active noisy WAV files | 9,183 |
| Original WAV files | 19,200 |
| Excluded WAV paths | 825 |
| WAV files stored in FLAGGED | 0 |
| **Remaining active WAV files** | 18,375 |

## Speakers

- All 100 speaker IDs remain after filtering.
- The table shows original file counts.

| Group | Speaker IDs | Speakers | WAV files |
|---|---|---:|---:|
| Foreign (LibriSpeech) | `s1-s67`, `s81-s88`, `s91-s99` | 84 | 16,128 |
| Filipino-English (SilencioPH) | `s68-s80`, `s89-s90`, `s100` | 16 | 3,072 |
| **Total** | `s1-s100` | **100** | **19,200** |

| Metadata split | Foreign speaker IDs | Filipino speaker IDs | Total speakers |
|---|---|---|---:|
| Train | `s1-s67` | `s68-s80` | 80 |
| Validation | `s81-s88` | `s89-s90` | 10 |
| Test | `s91-s99` | `s100` | 10 |

## Acoustic conditions

| Filename suffix | Condition | Files |
|---|---|---:|
| `_clean.wav` | Clean speech | 9,192 |
| `_noisy.wav` | Speech with light background noise; target approximately 30 dB SNR | 9,183 |

## Phrase variations

| Group | Intent | v1 | v2 | v3 |
|---|---|---|---|---|
| Music control | `PLAY_MUSIC` | Play music | Start music | Play some music |
| Music control | `VOLUME_UP` | Volume up | Increase the volume | Turn the volume up |
| Music control | `VOLUME_DOWN` | Volume down | Lower the volume | Turn the volume down |
| Music control | `NEXT` | Next song | Skip song | Play next song |
| Music control | `PAUSE` | Pause | Pause audio | Pause for now |
| Music control | `STOP` | Stop | Stop playing | End playback |
| Lighting | `LIGHT_ON` | Lights on | Power on the lights | Turn on the lights |
| Lighting | `LIGHT_OFF` | Lights off, please | Lights out, please | Lights out, now |
| Lighting | `BRIGHTNESS` | Brightness {percent} | Adjust brightness to {percent} | Brightness level {percent} |
| Lighting | `COLOR` | Color {color} | Change the lights to {color} | Set the lights to {color} |
| Temperature control | `TEMPERATURE` | Temperature {degrees} | Change the temperature to {degrees} | Set the temperature to {degrees} |
| Information | `WEATHER` | Weather | What's the weather? | Tell me the weather |
| Information | `TIME` | Time | What time is it? | Tell me the time |
| Timers and alarms | `TIMER` | Timer {duration} | Countdown for {duration} | Start a timer for {duration} |
| Timers and alarms | `ALARM` | Alarm {time} | Wake me up at {time} | Set an alarm for {time} |
| Communication | `CALL` | Call | Place a call | Make a phone call |
| Communication | `MESSAGE` | Message | Send a message | Send my message |
| Reminders | `CREATE_REMINDER` | Reminder {task} | Remind me to {task} | Create a reminder to {task} |
| Reminders | `LIST_REMINDERS` | Reminders | Show my reminders | List my reminders |

### Slot values

| Intent            | Slot         | Values                              |
| ----------------- | ------------ | ----------------------------------- |
| `TIMER`           | `{duration}` | 10 seconds; 30 seconds; 1 minute    |
| `ALARM`           | `{time}`     | 4 AM; 8 AM; 9 PM                    |
| `TEMPERATURE`     | `{degrees}`  | 18 degrees; 22 degrees; 26 degrees  |
| `BRIGHTNESS`      | `{percent}`  | 20 percent; 60 percent; 100 percent |
| `COLOR`           | `{color}`    | red; blue; yellow; green            |
| `CREATE_REMINDER` | `{task}`     | drink water; study; exercise       |

## Transcription-Based Filtering Results

Files are flagged when transcription similarity is **below 0.80**.

| Intent / slot folder | Original WAV files | Excluded WAV paths | Remaining active WAV files |
|---|---:|---:|---:|
| `PLAY_MUSIC` | 600 | 10 | 590 |
| `WEATHER` | 600 | 61 | 539 |
| `TIME` | 600 | 56 | 544 |
| `LIGHT_ON` | 600 | 34 | 566 |
| `LIGHT_OFF` | 600 | 30 | 570 |
| `PAUSE` | 600 | 51 | 549 |
| `STOP` | 600 | 52 | 548 |
| `NEXT` | 600 | 11 | 589 |
| `VOLUME_UP` | 600 | 39 | 561 |
| `VOLUME_DOWN` | 600 | 25 | 575 |
| `CALL` | 600 | 64 | 536 |
| `MESSAGE` | 600 | 75 | 525 |
| `LIST_REMINDERS` | 600 | 48 | 552 |
| `TIMER_10s` | 600 | 13 | 587 |
| `TIMER_30s` | 600 | 8 | 592 |
| `TIMER_1m` | 600 | 38 | 562 |
| `ALARM_4_00AM` | 600 | 34 | 566 |
| `ALARM_8_00AM` | 600 | 17 | 583 |
| `ALARM_9_00PM` | 600 | 19 | 581 |
| `TEMPERATURE_18` | 600 | 2 | 598 |
| `TEMPERATURE_22` | 600 | 1 | 599 |
| `TEMPERATURE_26` | 600 | 2 | 598 |
| `BRIGHTNESS_20` | 600 | 5 | 595 |
| `BRIGHTNESS_60` | 600 | 5 | 595 |
| `BRIGHTNESS_100` | 600 | 3 | 597 |
| `COLOR_RED` | 600 | 32 | 568 |
| `COLOR_BLUE` | 600 | 12 | 588 |
| `COLOR_GREEN` | 600 | 22 | 578 |
| `COLOR_YELLOW` | 600 | 17 | 583 |
| `CREATE_REMINDER_DRINK_WATER` | 600 | 4 | 596 |
| `CREATE_REMINDER_STUDY` | 600 | 25 | 575 |
| `CREATE_REMINDER_EXERCISE` | 600 | 10 | 590 |
| **Total** | **19,200** | **825** | **18,375** |

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

- Source filenames match their folders.
- Source manifest and report references use the updated names.

## Metadata

- `manifest.csv`: relative audio paths, intent, speaker, split, phrase variation, acoustic condition, transcript, slot value, and duration.
- `labels.json` and `slots.json`: intent and slot definitions.
- `OPTIONB_DATA_SUMMARY.md` and `dataset_design.txt`: supporting dataset documentation.

Resolve manifest paths relative to this directory. Metadata records the split assignments.

## Updates (2026-09-22)

- Updated PLAY_MUSIC, NEXT, PAUSE, and STOP to the current three phrase variations.
- Active files: **17,964**; currently excluded paths: **636**.

### Previous updates (2026-09-21)

| Item | Previous | Current | Reason |
|---|---|---|---|
| `CREATE_REMINDER` task slot | `call home` | `exercise` | Reduce confusion with the `CALL` intent. |
| `VOLUME_DOWN` variation 2 | Decrease the volume | Lower the volume | Reduce confusion between the similar-sounding words increase and decrease. |
| `NEXT` phrases | Skip song; Next song; Play next song | Next song; Skip song; Play next song | Use explicit song-navigation phrases. |
| `PAUSE` phrases | Pause; Pause the music; Pause this song | Pause; Pause audio; Pause for now | Use shorter pause phrases and avoid music-specific wording. |
| `STOP` phrases | Stop song; Stop music; Stop playing music | Stop; Stop playing; End playback | Use direct playback-stop phrases and avoid song or music wording. |
