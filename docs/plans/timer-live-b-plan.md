# timer-live-b plan

This file is the plan for the pass `timer-live-b`. No other plan is written for it, so do not
plan the pass again, run a review, or update STATUS. The steps below are the whole pass, and
nothing else is in it. Read `pass-core` if you want to, and write no file that these steps do
not name.

Start by running `git log --oneline origin/live-2026-11-18..HEAD`. Any step below whose commit
already shows in that list is done, so skip it. When the commit for step 1 is there, this
session is a relaunch of an earlier one: skip both sleeps as well, and carry on from the first
step that is not done.

Run each step from the pass's worktree, in order, and stop after the last one.

1. Write the file `notes-timer-live-b.md` with the line `step 1`. Run `bash scripts/gate.sh`,
   then `git add notes-timer-live-b.md`, then `git commit -m "Add timer-live-b step 1"`, then
   `git push origin timer-live-b`.
2. Run `sleep 240`.
3. Add the line `step 2` to `notes-timer-live-b.md`. Run `bash scripts/gate.sh`, then `git add
   notes-timer-live-b.md`, then `git commit -m "Add timer-live-b step 2"`, then `git push origin
   timer-live-b`.
4. Run `sleep 240`.
5. Write the body `A fixture follow-up from timer-live-b.` to `$CLAUDE_JOB_DIR/tmp/followup.md`.
   Run the follow-up command your launch prompt names, with the title `Fixture follow-up from
   timer-live-b` and `--body-file` set to that path. It prints an absolute path. Stage that file
   by its path relative to the worktree, as `git add docs/follow-ups/<slug>.md`. Then run `git
   commit -m "File the timer-live-b follow-up"` and `git push origin timer-live-b`.
6. Run `gh pr create --repo glw907/cc-desk-scratch --base live-2026-11-18 --head timer-live-b --title "Add timer-live-b notes" --body "Fixture pass timer-live-b."` and note the pull request number it prints.
7. Run `git rev-parse HEAD`.
8. Run the ready command your launch prompt names, adding `--pr <number> --commit <sha> --verdict accept --design inside`, with the number from step 6 and the commit from step 7.

The pass is done once the ready command has run.
