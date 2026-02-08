# Define Test Cases

You are tasked with designing acceptance test cases using a DSL approach with comment-first structure, following existing test patterns discovered in the codebase.

## Initial Response

When this command is invoked, respond with:
```
I'll help you define test cases for your feature. Please describe what you want to test, and I'll research existing test patterns and design comprehensive test cases.

Example: "Partner enrollment workflow when ordering kit products"
```

Then wait for the user's input.

## Process Steps

### Step 1: Research Existing Test Patterns

1. **Use codebase-pattern-finder agent** to discover:
   - Existing test file structures
   - Common testing DSL functions
   - Test organization patterns
   - Assertion and setup conventions

2. **Analyze test frameworks** in use:
   - Unit testing libraries
   - Assertion libraries
   - Test runner configurations
   - Mocking strategies

3. **Identify DSL components**:
   - Setup functions (arrange state)
   - Action functions (trigger behavior)
   - Assertion functions (verify outcomes)
   - Helper functions (utilities, data builders)

### Step 2: Understand Feature Requirements

1. **Clarify test scope** with user:
   - What exactly needs testing
   - Key user flows
   - Edge cases to consider
   - Error scenarios

2. **Break down functionality**:
   - Main success paths
   - Alternative flows
   - Error conditions
   - Boundary conditions

### Step 3: Design Test Cases

Follow the comment-first approach:

1. **Structure each test case** as:
   ```javascript
   // [Descriptive test name]
   //
   // [Setup conditions]
   // [More setup if needed]
   //
   // [Action that triggers the behavior]
   //
   // [Expected outcome]
   // [Additional expectations]
   ```

2. **Use clear, descriptive names**:
   - Start with the scenario being tested
   - Include expected outcome
   - Be specific about conditions

3. **Follow existing patterns**:
   - Match codebase conventions
   - Use similar DSL function names
   - Maintain consistent structure

### Step 4: Categorize Test Coverage

1. **Happy Path Tests**:
   - Main success scenarios
   - Typical user flows
   - Expected data conditions

2. **Edge Case Tests**:
   - Boundary conditions
   - Maximum/minimum values
   - Empty/null conditions
   - Special character inputs

3. **Error Condition Tests**:
   - Invalid inputs
   - Missing dependencies
   - Service failures
   - Permission issues

4. **Security Tests**:
   - Authorization checks
   - Input sanitization
   - Data exposure prevention

### Step 5: Generate Test Case Document

Structure the document with YAML frontmatter followed by content:
```markdown
---
date: [Current date and time in ISO format]
author: OpenCode
feature: [Feature being tested]
---
# Test Cases: [Feature Name]

## Overview
[Brief description of what's being tested and why]

## Test Approach
[Description of testing strategy and patterns to follow]

## Existing DSL Functions

### Setup Functions
- `functionName()` - [Description of what it does]
- ...

### Action Functions
- `functionName()` - [Description of what it does]
- ...

### Assertion Functions
- `functionName()` - [Description of what it does]
- ...

## Required New DSL Functions
[List any DSL functions that need to be created]

## Test Cases

### Happy Path

#### [Descriptive Test Name]
//
// [Setup conditions]
// [More setup if needed]
//
// [Action that triggers the behavior]
//
// [Expected outcome]
// [Additional expectations]

...

### Edge Cases

#### [Descriptive Test Name]
//
// [Setup conditions]
//
// [Action that triggers the behavior]
//
// [Expected outcome]

...

### Error Conditions

#### [Descriptive Test Name]
//
// [Setup conditions]
//
// [Action that triggers the behavior]
//
// [Expected outcome]

...

## Implementation Notes
[Guidance for implementing these tests]
[File locations]
[Any special considerations]
```

### Step 6: Save and Present Results

1. **Save to `thoughts/shared/test-cases/[feature-name]_YYYY-MM-DD.md`**
2. **Present summary** to the user:
   - Number of test cases designed
   - Coverage areas addressed
   - DSL functions identified
   - Next steps for implementation

3. **Highlight any gaps** that need clarification
4. **Provide implementation guidance**:
   - Where to add tests
   - How to implement missing DSL functions
   - Patterns to follow

## Important Guidelines

- **Comment-first approach** - Design tests as specifications before implementation
- **Follow existing patterns** - Match codebase conventions exactly
- **Be comprehensive** - Cover happy paths, edge cases, and errors
- **Be specific** - Include concrete examples and expected outcomes
- **Be actionable** - Provide clear guidance for test implementation
- **Use existing DSL** - Leverage current testing functions when possible
- **Identify gaps** - Note missing functions that need creation