# Option B: Spoken Command Dataset

Published from the DGX2 training manifest on 2026-09-26: **18,375 recordings**, **32 labels**, and **100 speakers**.

This release includes only audio listed in `manifest.csv`. HELLO_KIBO, SAGITTARIUS, s0 and sx are excluded. Flagged audio and retired recordings are excluded from this release.
QA exclusions are applied to individual recordings; an unflagged partner may remain. Counts therefore need not form complete clean/noisy pairs.

## Counts

| Split | Recordings |
|---|---:|
| train | 14677 |
| val | 1856 |
| test | 1842 |

| Condition | Recordings |
|---|---:|
| clean | 9192 |
| noisy | 9183 |

## Speakers

Speaker IDs are preserved from the source manifest. Train: s1–s80; validation: s81–s90; test: s91–s100.
Reference speech sources: [LibriSpeech](https://www.openslr.org/12), [LibriSpeech small subsets](https://www.openslr.org/31), and [SilencioPH](https://huggingface.co/datasets/SilencioNetwork/tagalog-filipino-speech).
The existing reference grouping comprises 84 foreign speakers and 16 Filipino-English speakers.

## Current phrases

| Label | Recordings | v1 | v2 | v3 |
|---|---:|---|---|---|
| `ALARM_4_00AM` | 566 | Alarm 4 AM | Wake me up at 4 AM | Set an alarm for 4 AM |
| `ALARM_8_00AM` | 583 | Alarm 8 AM | Wake me up at 8 AM | Set an alarm for 8 AM |
| `ALARM_9_00PM` | 581 | Alarm 9 PM | Wake me up at 9 PM | Set an alarm for 9 PM |
| `BRIGHTNESS_100` | 597 | Brightness 100 percent | Adjust brightness to 100 percent | Brightness level 100 percent |
| `BRIGHTNESS_20` | 595 | Brightness 20 percent | Adjust brightness to 20 percent | Brightness level 20 percent |
| `BRIGHTNESS_60` | 595 | Brightness 60 percent | Adjust brightness to 60 percent | Brightness level 60 percent |
| `CALL` | 536 | Call | Place a call | Make a phone call |
| `COLOR_BLUE` | 588 | Color blue | Change the lights to blue | Set the lights to blue |
| `COLOR_GREEN` | 578 | Color green | Change the lights to green | Set the lights to green |
| `COLOR_RED` | 568 | Color red | Change the lights to red | Set the lights to red |
| `COLOR_YELLOW` | 583 | Color yellow | Change the lights to yellow | Set the lights to yellow |
| `CREATE_REMINDER_DRINK_WATER` | 596 | Reminder drink water | Remind me to drink water | Create a reminder to drink water |
| `CREATE_REMINDER_EXERCISE` | 590 | Reminder exercise | Remind me to exercise | Create a reminder to exercise |
| `CREATE_REMINDER_STUDY` | 575 | Reminder study | Remind me to study | Create a reminder to study |
| `LIGHT_OFF` | 570 | Lights off, please | Lights out, please | Lights out, now |
| `LIGHT_ON` | 566 | Lights on | Power on the lights | Turn on the lights |
| `LIST_REMINDERS` | 552 | Reminders | Show my reminders | List my reminders |
| `MESSAGE` | 525 | Message | Send a message | Send my message |
| `NEXT` | 589 | Next song | Skip song | Play next song |
| `PAUSE` | 549 | Pause | Pause audio | Pause for now |
| `PLAY_MUSIC` | 590 | Play music | Start music | Play some music |
| `STOP` | 548 | Stop | Stop playing | End playback |
| `TEMPERATURE_18` | 598 | Temperature 18 degrees | Change the temperature to 18 degrees | Set the temperature to 18 degrees |
| `TEMPERATURE_22` | 599 | Temperature 22 degrees | Change the temperature to 22 degrees | Set the temperature to 22 degrees |
| `TEMPERATURE_26` | 598 | Temperature 26 degrees | Change the temperature to 26 degrees | Set the temperature to 26 degrees |
| `TIME` | 544 | Time | What time is it? | Tell me the time |
| `TIMER_10s` | 587 | Timer 10 seconds | Countdown for 10 seconds | Start a timer for 10 seconds |
| `TIMER_1m` | 562 | Timer 1 minute | Countdown for 1 minute | Start a timer for 1 minute |
| `TIMER_30s` | 592 | Timer 30 seconds | Countdown for 30 seconds | Start a timer for 30 seconds |
| `VOLUME_DOWN` | 575 | Volume down | Lower the volume | Turn the volume down |
| `VOLUME_UP` | 561 | Volume up | Increase the volume | Turn the volume up |
| `WEATHER` | 539 | Weather | What's the weather? | Tell me the weather |

## Loading

Resolve each manifest `path` relative to this directory. Use the provided speaker-disjoint `split` assignments. Labels and transcripts describe the retained audio; do not assume every speaker has every phrase after QA filtering.
