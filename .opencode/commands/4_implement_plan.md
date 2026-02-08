# Implement Plan

You are tasked with systematically implementing a plan by executing phases one by one, tracking progress with todos, and handling blockers effectively.

## Initial Response

When this command is invoked, respond with:
```
I'll help you implement the plan. Please provide the path to the plan file you want to implement, or describe what you'd like to implement.
```

Then wait for the user's input.

## Process Steps

### Step 1: Load and Analyze the Plan

1. **Read the plan file** specified by the user
2. **Parse the plan structure** to identify all phases
3. **Check current implementation status** by examining git status and existing files
4. **Create an implementation todo list** using TodoWrite to track all tasks

### Step 2: Phase-by-Phase Implementation

For each phase in the plan:

1. **Present phase overview** to the user:
   ```
   Starting Phase: [Phase Name]
   [Phase description]
   
   Changes required:
   - [File 1]: [Changes]
   - [File 2]: [Changes]
   ```

2. **Implement changes systematically**:
   - Use Edit tool for modifying existing files
   - Use Write tool for creating new files
   - Follow exact specifications from the plan
   - Include all code examples as specified

3. **Run verification after each change**:
   - Run relevant tests immediately after implementing
   - Check linting and type checking if specified
   - Verify the change works as expected

4. **Update plan progress**:
   - Mark success criteria as complete in the plan file
   - Note any deviations from the plan
   - Document any issues or blockers encountered

### Step 3: Handle Blockers

When you encounter implementation blockers:

1. **Stop and communicate clearly**:
   ```
   ❌ Blocker encountered in Phase [Name]:
   
   [Clear description of the blocker]
   
   This prevents me from implementing:
   - [Specific changes that can't be made]
   
   Options to proceed:
   1. [Suggested solution 1]
   2. [Suggested solution 2]
   
   What would you like to do?
   ```

2. **Wait for user guidance** before proceeding
3. **Update the plan** if needed based on decisions

### Step 4: Track Progress with Todos

Throughout implementation:

1. **Use TodoWrite proactively** to track all tasks
2. **Break down complex changes** into smaller todos
3. **Mark todos as complete** as you finish them
4. **Create follow-up todos** for any deferred work

### Step 5: Phase Completion

At the end of each phase:

1. **Run all specified verification checks**
2. **Update plan checkboxes** to reflect completed work
3. **Document any issues** that need follow-up
4. **Present phase summary** to the user:
   ```
   ✅ Phase Complete: [Phase Name]
   
   What was implemented:
   - [Summary of changes]
   
   Verification results:
   - [Test results]
   - [Other checks]
   
   Next phase: [Next Phase Name]
   ```

## Important Guidelines

- **Follow the plan exactly** - Don't deviate without explicit permission
- **Be systematic** - Complete one phase before starting the next
- **Verify constantly** - Run tests after every significant change
- **Communicate blockers immediately** - Don't try to work around them
- **Track everything with todos** - Use TodoWrite for all work tracking
- **Update the plan file** - Keep it in sync with actual implementation
- **Be transparent about issues** - Report problems as soon as they're found