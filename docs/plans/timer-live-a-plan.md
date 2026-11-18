# timer-live-a plan

This file is the plan for the pass `timer-live-a`. No other plan is written for it, so do not
plan the pass again, run a review, or update STATUS. The steps below are the whole pass, and
nothing else is in it. Read `pass-core` if you want to, and write no file that these steps do
not name.

Run each step from the pass's worktree, in order, and stop after the last one.

1. Write the file `notes-timer-live-a.md` with the one line `timer-live-a ran.`
2. Run `bash scripts/gate.sh`.
3. Run `git add notes-timer-live-a.md`.
4. Run `git commit -m "Add timer-live-a notes"`.
5. Run `git push origin timer-live-a`.
6. Run `gh pr create --repo glw907/cc-desk-scratch --base live-2026-11-18 --head timer-live-a --title "Add timer-live-a notes" --body "Fixture pass timer-live-a."` and note the pull request number it prints.
7. Run `git rev-parse HEAD`.
8. Run the ready command your launch prompt names, adding `--pr <number> --commit <sha> --verdict accept --design inside`, with the number from step 6 and the commit from step 7.

The pass is done once the ready command has run.
