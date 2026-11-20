# work plan

This file is the plan for a pass that keeps working. Do not plan the pass again, run a review, or
update STATUS. Open no pull request, start no background subagent or watch, and never run `sleep`
as a command: the gate is the only thing that takes time.

The work is 300 steps. Each step runs the scratch gate and then records its number:

1. Read `work-steps.txt` in the worktree's root with the Read tool. If it does not exist, you
   are at step 1. If it does, its last line reads `step <n> done`, and you are at step `<n>` plus 1.
   A relaunched session resumes here, so never start again from step 1 while the file exists.
2. Run exactly `bash scripts/gate.sh`, as one command with no pipe, redirect, or other command
   joined to it. Run it in the foreground and wait for it to end.
3. Record the step with the Write or Edit tool, not a shell command: append the line
   `step <n> done` to `work-steps.txt`, keeping every earlier line. Leave the file uncommitted.
4. Go to the next step at once. Do not reply between steps.

After step 300 is recorded, reply with the one word `finished`, then stop. Commit nothing and
push nothing.
