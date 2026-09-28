# Option B: Spoken Command Dataset

Counts describe **reference speakers `s1-s150` in the DGX2 dataset as of 2026-09-28**. This documentation update does not synchronize the GitHub audio files or manifest.

- **150 reference speakers:** 84 LibriSpeech, 16 Filipino-English, and 50 additional speakers from non-US country subsets.
- **19 command intents:** 13 fixed intents with 3 phrases each, and 6 variable intents. Five variable intents have 3 templates x 3 slot values; COLOR has 3 templates x 4 values.
- **Wake and exit phrases:** `HELLO_KIBO` and `SAGITTARIUS`, one phrase each. Including these gives **21 intents, 34 labels, and 98 distinct label/phrase combinations**.
- **28,968 active files:** 14,255 clean, 14,215 noisy, and 498 additional numbered noise variants.
- Filtering applies to **individual files**; a passing counterpart is retained when the other condition fails.
- Original transcription filtering used [simple-audio-transcriber by Martinnavs](https://github.com/Martinnavs/simple-audio-transcriber). The additional 50-speaker batch used automated transcription QA with faster-whisper small.

## Dataset overview

| Item | Count |
|---|---:|
| Reference speakers (`s1-s150`) | 150 |
| Foreign reference speakers | 134 |
| Filipino-English reference speakers | 16 |
| All active reference speaker IDs | 150 |
| Command intents | 19 |
| Command intents without slots | 13 |
| Command intents with slots | 6 |
| Wake / exit intents | 2 |
| Classification labels, including wake / exit | 34 |
| Base acoustic conditions per utterance | 2 |
| Active clean WAV files | 14,255 |
| Active `_noisy.wav` files | 14,215 |
| Active `_noisy1.wav` through `_noisy6.wav` files | 498 |
| Planned base clean/noisy files for `s1-s150` | 29,400 |
| Active base clean/noisy files for `s1-s150` | 28,470 |
| Excluded base paths for `s1-s150`, stored in FLAGGED | 930 |
| Additional active HELLO_KIBO numbered noise variants | 498 |
| WAV files physically stored in FLAGGED, including retired labels | 990 |
| **Remaining active WAV files / manifest rows** | **28,968** |

The base inventory is 150 x 98 x 2 = 29,400 files: 28,470 active plus 930 excluded. The additional 498 active files are numbered noise variants for reference-speaker HELLO_KIBO. FLAGGED also contains 60 files from retired labels, outside the current base inventory. No FLAGGED path appears in the active manifest.

## Speakers

All 150 reference speaker IDs remain after filtering. Counts below are **active manifest files**, including applicable augmentation.

| Group | Speaker IDs | Speakers | Active WAV files |
|---|---|---:|---:|
| Foreign ([LibriSpeech](https://www.openslr.org/12), [small subsets](https://www.openslr.org/31)) | `s1-s67`, `s81-s88`, `s91-s99` | 84 | 16,360 |
| Filipino-English ([SilencioPH](https://huggingface.co/datasets/SilencioNetwork/tagalog-filipino-speech)) | `s68-s80`, `s89-s90`, `s100` | 16 | 2,833 |
| Additional references ([SilencioNetwork global dataset](https://huggingface.co/datasets/SilencioNetwork/complete-voiceai-speech-dataset)) | `s101-s150` | 50 | 9,775 |
| **Total** | **`s1-s150`** | **150** | **28,968** |

The 50 additional references come from country subsets for Australia (4), Ireland (3), Kenya (4), Nigeria (30), Pakistan (3), South Africa (4), and the United Kingdom (2). These are source metadata classifications. Their source speaker IDs and reference-file hashes do not duplicate existing registered references.

| Metadata split | Original reference IDs | Additional reference IDs | Total speakers | Active files |
|---|---|---|---:|---:|
| Train | `s1-s80` | `s101-s140` | 120 | 23,136 |
| Validation | `s81-s90` | `s141-s145` | 15 | 2,926 |
| Test | `s91-s100` | `s146-s150` | 15 | 2,906 |

Speaker IDs are disjoint across splits.

## Acoustic conditions

| Filename suffix | Condition | Active files |
|---|---|---:|
| `_clean.wav` | Clean speech | 14,255 |
| `_noisy.wav` | Speech with light background noise | 14,215 |
| `_noisy1.wav` | Additional noise variant 1 | 83 |
| `_noisy2.wav` | Additional noise variant 2 | 83 |
| `_noisy3.wav` | Additional noise variant 3 | 83 |
| `_noisy4.wav` | Additional noise variant 4 | 83 |
| `_noisy5.wav` | Additional noise variant 5 | 83 |
| `_noisy6.wav` | Additional noise variant 6 | 83 |
| **Total** | | **28,968** |


Numbered noise variants are present for 83 reference-speaker HELLO_KIBO utterances; they are not part of every speaker's base inventory.

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

### Wake and exit phrases

| Label | Phrase ID | Transcript |
|---|---|---|
| `HELLO_KIBO` | `v1` | Hello Kibo |
| `SAGITTARIUS` | `v1` | Sagittarius |

## Transcription-Based Filtering Results

Files with transcription similarity below **0.80** fail QA individually. For the additional 50-speaker batch, files still failing after 30 recorded attempts were skipped and stored in FLAGGED, excluded from the manifest. That batch contributes **9,775 passed files** (4,900 clean and 4,875 noisy); **25 noisy files** were excluded.

The table includes reference speakers `s1-s150` and their augmentation. Base exclusions refer only to the planned clean/noisy inventory for `s1-s150`.

| Label | Planned base files | Excluded base paths | Additional active files | Total active files |
|---|---:|---:|---:|---:|
| `ALARM_4_00AM` | 900 | 34 | 0 | 866 |
| `ALARM_8_00AM` | 900 | 17 | 0 | 883 |
| `ALARM_9_00PM` | 900 | 19 | 0 | 881 |
| `BRIGHTNESS_100` | 900 | 3 | 0 | 897 |
| `BRIGHTNESS_20` | 900 | 5 | 0 | 895 |
| `BRIGHTNESS_60` | 900 | 5 | 0 | 895 |
| `CALL` | 900 | 69 | 0 | 831 |
| `COLOR_BLUE` | 900 | 12 | 0 | 888 |
| `COLOR_GREEN` | 900 | 22 | 0 | 878 |
| `COLOR_RED` | 900 | 32 | 0 | 868 |
| `COLOR_YELLOW` | 900 | 18 | 0 | 882 |
| `CREATE_REMINDER_DRINK_WATER` | 900 | 4 | 0 | 896 |
| `CREATE_REMINDER_EXERCISE` | 900 | 10 | 0 | 890 |
| `CREATE_REMINDER_STUDY` | 900 | 26 | 0 | 874 |
| `HELLO_KIBO` | 300 | 48 | 498 | 750 |
| `LIGHT_OFF` | 900 | 30 | 0 | 870 |
| `LIGHT_ON` | 900 | 34 | 0 | 866 |
| `LIST_REMINDERS` | 900 | 49 | 0 | 851 |
| `MESSAGE` | 900 | 76 | 0 | 824 |
| `NEXT` | 900 | 12 | 0 | 888 |
| `PAUSE` | 900 | 53 | 0 | 847 |
| `PLAY_MUSIC` | 900 | 11 | 0 | 889 |
| `SAGITTARIUS` | 300 | 38 | 0 | 262 |
| `STOP` | 900 | 52 | 0 | 848 |
| `TEMPERATURE_18` | 900 | 2 | 0 | 898 |
| `TEMPERATURE_22` | 900 | 1 | 0 | 899 |
| `TEMPERATURE_26` | 900 | 2 | 0 | 898 |
| `TIME` | 900 | 56 | 0 | 844 |
| `TIMER_10s` | 900 | 14 | 0 | 886 |
| `TIMER_1m` | 900 | 40 | 0 | 860 |
| `TIMER_30s` | 900 | 8 | 0 | 892 |
| `VOLUME_DOWN` | 900 | 26 | 0 | 874 |
| `VOLUME_UP` | 900 | 39 | 0 | 861 |
| `WEATHER` | 900 | 63 | 0 | 837 |
| **Total** | **29,400** | **930** | **498** | **28,968** |

## Filename convention

`<LABEL>_<speaker_id>_<phrase_id>_<variant_id>.wav`

Reference speaker IDs are `s1-s150`. Variants are `clean`, `noisy`, and, where available, `noisy1` through `noisy6`.

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

On DGX2, resolve manifest paths relative to `~/AI231/MEX2/optionb/`. The manifest records the split assignments and defines the active training inventory.
