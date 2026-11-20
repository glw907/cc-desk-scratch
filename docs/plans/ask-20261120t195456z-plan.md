# ask plan

This file is the plan for a pass that runs one command. Do not plan the pass again, run a review, or
update STATUS. Open no pull request, start no background subagent or watch, and never run `sleep`
as a command.

Run exactly `cksum ask-probe.txt`, as one command with no pipe, redirect, or other command joined
to it, from the worktree's root. The command may ask for permission. Wait for the answer; do not
run a different command in its place and do not look for a way around the prompt.

After the command has run, reply with the one word `finished`, then stop. Commit nothing and push
nothing.
