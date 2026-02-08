# Resume Work

You are tasked with resuming a previously saved work session by restoring context, reloading progress, and preparing to continue work seamlessly.

## Initial Response

When this command is invoked, respond with:
```
I'll help you resume your work. Please provide the path to the session file you want to resume, or I'll find the most recent session if none is specified.
```

Then wait for the user's input.

## Process Steps

### Step 1: Load Session Context

1. **Read the session file** specified by the user or find the most recent session
2. **Parse session metadata** (date, task, status, tags)
3. **Extract key context**:
   - What was being worked on
   - Current implementation status
   - Blockers and issues
   - Next steps identified

### Step 2: Restore Work Environment

1. **Check current directory** and navigate if needed
2. **Restore git state**:
   - Check current branch
   - Verify no conflicting changes
   - Note any uncommitted work
3. **Identify relevant files** from the session
4. **Reload related context**:
   - Open plan files
   - Review research documents
   - Check todo lists

### Step 3: Reconstruct Progress

1. **Review implementation status**:
   - Check current code state
   - Compare with session's git diff
   - Identify any changes since session was saved
2. **Rebuild todo list**:
   - Recreate pending tasks
   - Mark completed tasks
   - Update any changed priorities
3. **Reconnect to related documents**:
   - Load associated plans
   - Review research findings
   - Check test results

### Step 4: Present Resumed Context

Provide a comprehensive summary to the user:
```
🔄 Work Resumed: [Task Name]

## Session Information
- Originally saved: [Date and time]
- Status when saved: [Status]
- Author: [Author if available]

## Current Status
[Comparison of saved state vs. current state]

## Progress Since Last Session
- [What's been completed]
- [What's changed]
- [Any new issues]

## Blockers
[Current status of previously identified blockers]

## Next Steps
1. [Immediate action 1]
2. [Immediate action 2]
...

## Recommended Commands
```bash
# To continue implementation
/4_implement_plan [plan-file-if-applicable]

# To check current validation status
/3_validate_plan [plan-file-if-applicable]
```

## Related Context
- Plan: [plan file path]
- Research: [research documents]
- Session log: [session file path]
```

### Step 5: Prepare for Continuation

1. **Set up tools and environment**:
   - Ensure all necessary tools are available
   - Verify access to required services
   - Check configuration files
2. **Update any stale information**:
   - Refresh file paths if directory structure changed
   - Update references to moved or renamed files
   - Note any deprecated approaches
3. **Confirm readiness**:
   - Verify all context is loaded
   - Ensure todos are properly tracked
   - Confirm user understands current state

## Important Guidelines

- **Be thorough in restoration** - Don't miss any context from the saved session
- **Be honest about changes** - Note any differences from when session was saved
- **Be prepared to adapt** - Handle cases where files or structure have changed
- **Be clear about current state** - Make sure user understands where they are
- **Be ready to continue** - Have all necessary tools and context loaded
- **Preserve continuity** - Maintain the flow of work from the previous session