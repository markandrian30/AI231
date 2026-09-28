# Option B Dataset Summary

DGX2 snapshot: **2026-09-28**, covering **reference speakers `s1-s150`**. Documentation counts describe the DGX2 dataset; this update does not synchronize GitHub audio or manifest files.

- Active reference-speaker manifest entries: **28,968** (14,255 clean, 14,215 noisy, and 83 each of noisy1 through noisy6).
- Reference speakers: **150**: 134 foreign and 16 Filipino-English.
- Speaker split: **120 train, 15 validation, and 15 test**, without speaker overlap.
- Active files by split: **23,136 train; 2,926 validation; 2,906 test**.
- Design: **19 command intents plus 2 wake/exit intents; 34 labels; 98 label/phrase combinations**.
- Base inventory: **29,400 = 28,470 active + 930 excluded** clean/noisy paths.
- Additional active files: **498 HELLO_KIBO numbered noise variants**.
- Physical FLAGGED storage: **990 WAVs**, including 60 files from retired labels outside the current base inventory. Flagged paths are excluded from the active manifest.
- Added 50-speaker batch: **9,775 QA-passed files and 25 excluded noisy files**.
- LIGHT_OFF phrases: **Lights off, please; Lights out, please; Lights out, now**.

Filtering applies to individual files, not whole clean/noisy pairs. The active manifest retains passing files; filtered gaps are accounted for in FLAGGED.

See [README.md](README.md) for phrases, speaker sources, splits, and per-label counts.
