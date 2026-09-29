# Option B: Spoken Command Dataset

- **150 speakers:** 134 foreign and 16 Filipino-English.
- **13 fixed intents:** 3 phrases each.
- **6 variable intents:** 3 phrase templates x 3 slot values = 9 utterances each; COLOR has 4 slot values = 12 utterances.
- **Two acoustic conditions:** clean and light background noise.
- **28,800 original files; 27,956 remaining after filtering.**
- **Transcriber used:** [simple-audio-transcriber by Martinnavs](https://github.com/Martinnavs/simple-audio-transcriber); faster-whisper small for the new 50 speakers.

## Dataset overview

| Item | Count |
|---|---:|
| Reference speakers | 150 |
| Foreign speakers (84 [LibriSpeech](https://www.openslr.org/12), [small subsets](https://www.openslr.org/31); 50 [SilencioNetwork](https://huggingface.co/datasets/SilencioNetwork/complete-voiceai-speech-dataset)) | 134 |
| Filipino-English speakers ([SilencioPH](https://huggingface.co/datasets/SilencioNetwork/tagalog-filipino-speech)) | 16 |
| Intents | 19 |
| Intents without slots | 13 |
| Intents with slots | 6 |
| Acoustic conditions per utterance | 2 |
| Active clean WAV files | 13,992 |
| Active noisy WAV files | 13,964 |
| Original WAV files | 28,800 |
| Excluded WAV paths | 844 |
| WAV files stored in FLAGGED | 844 |
| **Remaining active WAV files** | **27,956** |

*DGX2 counts as of 2026-09-28, for the command dataset described here.*

## Speakers

- All 150 speaker IDs remain after filtering.
- The table shows original file counts.

| Group | Speaker IDs | Speakers | WAV files |
|---|---|---:|---:|
| Foreign (LibriSpeech) | `s1-s67`, `s81-s88`, `s91-s99` | 84 | 16,128 |
| Filipino-English (SilencioPH) | `s68-s80`, `s89-s90`, `s100` | 16 | 3,072 |
| Foreign (SilencioNetwork, new) | `s101-s150` | 50 | 9,600 |
| **Total** | **`s1-s150`** | **150** | **28,800** |

| Metadata split | Foreign speaker IDs | Filipino speaker IDs | Total speakers |
|---|---|---|---:|
| Train | `s1-s67`, `s101-s140` | `s68-s80` | 120 |
| Validation | `s81-s88`, `s141-s145` | `s89-s90` | 15 |
| Test | `s91-s99`, `s146-s150` | `s100` | 15 |

### New 50 speakers

| Source country subset | Speakers |
|---|---:|
| Australia | 4 |
| Ireland | 3 |
| Kenya | 4 |
| Nigeria | 30 |
| Pakistan | 3 |
| South Africa | 4 |
| United Kingdom | 2 |
| **Total** | **50** |

- No duplicate registered source speaker IDs or reference-file hashes.
- **9,581 active command files; 19 flagged files.**

## Acoustic conditions

| Filename suffix | Condition | Files |
|---|---|---:|
| `_clean.wav` | Clean speech | 13,992 |
| `_noisy.wav` | Speech with light background noise | 13,964 |

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

Files are flagged individually when transcription similarity is **below 0.80**.

| Intent / slot folder | Original WAV files | Excluded WAV paths | Remaining active WAV files |
|---|---:|---:|---:|
| `ALARM_4_00AM` | 900 | 34 | 866 |
| `ALARM_8_00AM` | 900 | 17 | 883 |
| `ALARM_9_00PM` | 900 | 19 | 881 |
| `BRIGHTNESS_100` | 900 | 3 | 897 |
| `BRIGHTNESS_20` | 900 | 5 | 895 |
| `BRIGHTNESS_60` | 900 | 5 | 895 |
| `CALL` | 900 | 69 | 831 |
| `COLOR_BLUE` | 900 | 12 | 888 |
| `COLOR_GREEN` | 900 | 22 | 878 |
| `COLOR_RED` | 900 | 32 | 868 |
| `COLOR_YELLOW` | 900 | 18 | 882 |
| `CREATE_REMINDER_DRINK_WATER` | 900 | 4 | 896 |
| `CREATE_REMINDER_EXERCISE` | 900 | 10 | 890 |
| `CREATE_REMINDER_STUDY` | 900 | 26 | 874 |
| `LIGHT_OFF` | 900 | 30 | 870 |
| `LIGHT_ON` | 900 | 34 | 866 |
| `LIST_REMINDERS` | 900 | 49 | 851 |
| `MESSAGE` | 900 | 76 | 824 |
| `NEXT` | 900 | 12 | 888 |
| `PAUSE` | 900 | 53 | 847 |
| `PLAY_MUSIC` | 900 | 11 | 889 |
| `STOP` | 900 | 52 | 848 |
| `TEMPERATURE_18` | 900 | 2 | 898 |
| `TEMPERATURE_22` | 900 | 1 | 899 |
| `TEMPERATURE_26` | 900 | 2 | 898 |
| `TIME` | 900 | 56 | 844 |
| `TIMER_10s` | 900 | 14 | 886 |
| `TIMER_1m` | 900 | 40 | 860 |
| `TIMER_30s` | 900 | 8 | 892 |
| `VOLUME_DOWN` | 900 | 26 | 874 |
| `VOLUME_UP` | 900 | 39 | 861 |
| `WEATHER` | 900 | 63 | 837 |
| **Total** | **28,800** | **844** | **27,956** |

## Filename convention

`<FOLDER_NAME>_s<speaker>_v<phrase variation>_<condition>.wav`

Example: `BRIGHTNESS_100/BRIGHTNESS_100_s101_v3_noisy.wav`

| Component | Meaning |
|---|---|
| `BRIGHTNESS_100/` | Intent folder with the 100-percent slot value |
| `s101` | Reference speaker 101 |
| `v3` | Third phrase variation |
| `noisy` | Acoustic condition |

## Metadata

- `manifest.csv`: audio paths, intent, speaker, split, phrase, condition, transcript, slot value, and duration.
- `labels.json` and `slots.json`: intent and slot definitions.
- [OPTIONB_DATA_SUMMARY.md](OPTIONB_DATA_SUMMARY.md): dataset summary.
