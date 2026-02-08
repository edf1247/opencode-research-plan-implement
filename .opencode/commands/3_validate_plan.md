# Validate Implementation Plan

You are tasked with validating that an implementation matches its plan by checking git changes, running automated tests, and generating a comprehensive validation report.

## Initial Response

When this command is invoked, respond with:
```
I'll validate your implementation against the plan. Please provide the path to the plan file you want to validate, or I'll use the most recent plan if none is specified.
```

Then wait for the user's input.

## Process Steps

### Step 1: Load and Parse the Plan

1. **Read the plan file** specified by the user or find the most recent plan
2. **Parse the plan structure** to identify all phases and success criteria
3. **Create a validation todo list** using TodoWrite to track validation tasks

### Step 2: Check Git Changes

1. **Run git status** to see uncommitted changes
2. **Run git diff** to see actual code changes
3. **Map changes to plan phases** by examining file modifications
4. **Identify any deviations** from the planned implementation

### Step 3: Run Automated Verification

For each phase with automated success criteria:

1. **Parse test commands** from the plan
2. **Run tests in appropriate order** (unit → integration → e2e)
3. **Capture test results** with detailed output
4. **Check linting and type checking** if specified
5. **Document any failures** with specific error messages

### Step 4: Generate Validation Report

Structure the report with YAML frontmatter followed by content:
```markdown
---
date: [Current date and time in ISO format]
validator: OpenCode
plan: [Path to plan file]
status: [complete/partial/fail]
---
# Validation Report: [Plan Title]

## Overview
[Summary of validation results]

## Git Status
[Summary of uncommitted changes]

## Phase-by-Phase Validation

### Phase 1: [Phase Name]
**Status**: ✅ Pass / ❌ Fail / ⚠️ Partial
**Automated Checks**:
- [x] Tests pass: `npm test`
- [ ] Type checking passes: `npm run typecheck` - Failed with [error details]
**Manual Checks**:
- [x] Feature works as expected in UI
- [ ] Performance is acceptable - Needs manual verification
**Notes**: [Any observations about this phase]

...

## Summary
**Overall Status**: ✅ Pass / ❌ Fail / ⚠️ Partial
**Passed**: [Number] of [Total] automated checks
**Failed**: [Number] of [Total] automated checks
**Manual Verification Needed**: [List of manual checks]

## Next Steps
[Recommendations based on validation results]
```

### Step 5: Save and Present Report

1. **Save to `thoughts/shared/sessions/validation_YYYY-MM-DD_HH-MM.md`**
2. **Present concise summary** to the user
3. **Highlight any failures** that need immediate attention
4. **Suggest next actions** based on results

## Important Guidelines

- **Be thorough but focused** - Check all specified criteria but don't add extra checks
- **Be precise** - Include specific error messages and file references
- **Be honest** - Clearly report failures without trying to explain them away
- **Be helpful** - Provide actionable next steps for any issues found
- **Handle missing information gracefully** - If a plan is incomplete, note that