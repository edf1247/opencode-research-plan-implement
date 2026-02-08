# Save Progress

You are tasked with saving the current work session state to enable seamless continuation later. This includes documenting progress, capturing context, and creating a resumable checkpoint.

## Initial Response

When this command is invoked, respond with:
```
I'll help you save your current progress. Please provide a brief description of what you're working on and the current status.
```

Then wait for the user's input.

## Process Steps

### Step 1: Gather Session Context

1. **Ask user for session summary**:
   - What feature/task are you working on?
   - What's the current status?
   - Any important notes or context?

2. **Capture current state automatically**:
   - Run `git status` to see uncommitted changes
   - Run `git diff` to see actual code changes
   - Identify current working directory and open files
   - Note any running processes or background tasks

### Step 2: Document Progress

Create a comprehensive session summary including:

1. **Work Completed**:
   - Features implemented
   - Tests written
   - Documentation updated
   - Issues resolved

2. **Current Status**:
   - Phase of implementation (if following a plan)
   - Current todo list state
   - Recent changes made
   - Test results

3. **Blockers and Issues**:
   - Current blockers preventing progress
   - Known issues that need resolution
   - Technical debt incurred
   - Risks or concerns

4. **Next Steps**:
   - Immediate next actions
   - Longer-term roadmap
   - Dependencies on other work

### Step 3: Create Session Document

Structure the session document with YAML frontmatter:
```markdown
---
date: [Current date and time in ISO format]
author: [User name if available, otherwise "OpenCode User"]
task: [Brief task description]
status: [in-progress/completed/blocked]
tags: [session, progress, relevant-tags]
---
# Work Session: [Task Name]

## Session Summary
[Brief overview of what was worked on]

## Progress Made
- [Completed item 1]
- [Completed item 2]
- ...

## Current Implementation Status
[Description of current state with code references]

## Git Changes
[Summary of uncommitted changes]

## Blockers
- [Blocker 1]: [Description and impact]
- ...

## Next Steps
1. [Action 1]
2. [Action 2]
...

## Commands to Resume
```bash
# Recommended commands to continue work
/opencode-resume-work
# Or specific commands:
cd [directory]
[relevant commands]
```

## Related Files
- [Plan file if applicable]
- [Research documents]
- [Other relevant context]
```

### Step 4: Save Session Document

1. **Generate filename**: `thoughts/shared/sessions/YYYY-MM-DD_HH-MM_[task-name].md`
2. **Save the document** with all context
3. **Update any related plans** with current progress
4. **Commit session document** if using git tracking

### Step 5: Present Summary

Provide a concise summary to the user:
```
✅ Progress Saved Successfully

Session document: thoughts/shared/sessions/YYYY-MM-DD_HH-MM_[task-name].md

What was saved:
- Current implementation state
- Git changes and status
- Todo list progress
- Blockers and next steps

To resume work later:
/6_resume_work thoughts/shared/sessions/YYYY-MM-DD_HH-MM_[task-name].md
```

## Important Guidelines

- **Be comprehensive** - Capture all relevant context for later resumption
- **Be specific** - Include exact file names, line numbers, and commands
- **Be honest** - Document blockers and issues clearly
- **Be actionable** - Provide clear next steps for resuming work
- **Preserve todos** - Ensure todo list state can be restored
- **Link related documents** - Connect to plans, research, and other context