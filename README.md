# OpenCode Research-Plan-Implement Framework

A structured workflow framework for AI-assisted software development that emphasizes thorough research, detailed planning, and systematic implementation, adapted for OpenCode.

## 🚀 Quick Start

```bash
# Copy framework files to your repository
cp -r .opencode /path/to/your/repo/
cp -r thoughts /path/to/your/repo/
```

## 📁 What's Included

```
.opencode-framework-adoption/
├── .opencode/
│   ├── agents/                  # AI agent definitions
│   │   ├── codebase-locator.md  # Finds relevant files
│   │   ├── codebase-analyzer.md # Analyzes how code works
│   │   └── codebase-pattern-finder.md # Finds patterns to follow
│   └── commands/                # Numbered workflow commands
│       ├── 1_research_codebase.md
│       ├── 2_create_plan.md
│       ├── 3_validate_plan.md
│       ├── 4_implement_plan.md
│       ├── 5_save_progress.md
│       ├── 6_resume_work.md
│       ├── 7_research_cloud.md
│       └── 8_define_test_cases.md
├── thoughts/                    # Context storage structure
│   └── shared/
│       ├── research/
│       ├── plans/
│       ├── sessions/
│       ├── cloud/
│       └── test-cases/
└── README.md                    # This file
```

## 🔄 Workflow Commands

The framework follows a structured workflow:

### 1️⃣ Research Codebase (`/1_research_codebase`)
**Purpose**: Deep dive into the codebase using parallel AI agents
**Usage**: Provide a research question or area to explore
**Output**: Comprehensive findings saved to `thoughts/shared/research/`
**Example**: "How does the authentication system work?"

### 2️⃣ Create Plan (`/2_create_plan`)
**Purpose**: Generate detailed, phased implementation plans
**Usage**: Describe the feature or change you want to implement
**Output**: Structured plan saved to `thoughts/shared/plans/`
**Example**: "Add OAuth2 integration to the authentication system"

### 3️⃣ Validate Plan (`/3_validate_plan`)
**Purpose**: Verify implementation matches the plan's success criteria
**Usage**: Automatically checks against the most recent plan
**Output**: Validation report confirming all phases are complete
**Example**: Just run `/3_validate_plan` after implementation

### 4️⃣ Implement Plan (`/4_implement_plan`)
**Purpose**: Execute a plan systematically, phase by phase
**Usage**: Provide path to a plan file or describe what to implement
**Output**: Code changes following the plan's specifications
**Example**: `thoughts/shared/plans/oauth2_integration.md`

### 5️⃣ Save Progress (`/5_save_progress`)
**Purpose**: Save current work session state for continuity
**Usage**: Creates a session summary documenting work progress
**Output**: Session file in `thoughts/shared/sessions/`
**Example**: Use when stopping work mid-task

### 6️⃣ Resume Work (`/6_resume_work`)
**Purpose**: Resume from a previously saved session
**Usage**: Loads context from a session file
**Output**: Restored context and work continuation
**Example**: `thoughts/shared/sessions/2025-01-06_oauth2.md`

### 7️⃣ Research Cloud (`/7_research_cloud`)
**Purpose**: Analyze cloud infrastructure using READ-ONLY CLI operations
**Usage**: Specify cloud platform (Azure/AWS/GCP) and focus area
**Output**: Infrastructure analysis in `thoughts/shared/cloud/`
**Example**: "Analyze Azure production environment"

### 8️⃣ Define Test Cases (`/8_define_test_cases`)
**Purpose**: Design acceptance test cases using DSL approach with comment-first structure
**Usage**: Describe feature to test; agent researches existing test patterns first
**Output**: Test case definitions in comments + list of required DSL functions
**Example**: "Define test cases for partner enrollment workflow"

## 🎯 Key Benefits

- **📚 Knowledge Accumulation**: Research and plans persist in `thoughts/` directory
- **⚡ Parallel Processing**: Multiple AI agents work simultaneously during research
- **✅ Quality Assurance**: Built-in validation and success criteria
- **🔍 Deep Understanding**: Thorough research before implementation
- **📋 Clear Specifications**: Detailed plans prevent scope creep

## 🛠 Customization

After installation, customize for your project:

1. **Edit command files** to match your tooling (test commands, linting, etc.)
2. **Update agent descriptions** if needed
3. **Adjust directory paths** in commands

## 💡 Typical Workflow Example

```markdown
# 1. Research the existing codebase
/1_research_codebase
> How does the authentication system work?

# 2. Create a plan based on research
/2_create_plan
> Add OAuth2 integration to the authentication system

# 3. Implement the plan
/4_implement_plan
> thoughts/shared/plans/oauth2_integration.md

# 4. Validate implementation matches plan
/3_validate_plan

# 5. Save progress if needed to pause
/5_save_progress

# 6. Resume work later
/6_resume_work
> thoughts/shared/sessions/2025-01-06_oauth2.md
```

## ☁️ Cloud Analysis Example

```markdown
# Analyze your cloud infrastructure (READ-ONLY)
/7_research_cloud
> Azure
> all
```

## 🧪 Test-Driven Development Example

```markdown
# 1. Define test cases for a new feature
/8_define_test_cases
> Partner enrollment workflow with kit orders

# 2. Implement the DSL functions and tests
# (Follow the patterns discovered by the agent)

# 3. Implement the actual feature to make tests pass
/4_implement_plan
> Implement partner enrollment logic
```