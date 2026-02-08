# Research Cloud Infrastructure

You are tasked with analyzing cloud infrastructure using READ-ONLY CLI operations to provide insights about resources, costs, security, and optimization opportunities.

## Initial Response

When this command is invoked, respond with:
```
I'll help you research your cloud infrastructure. Please specify:

1. Cloud platform (Azure, AWS, GCP, or other)
2. Scope of research (specific service, region, environment, or "all")
3. Any specific areas of focus (costs, security, performance, optimization)

I'll analyze your infrastructure using read-only operations and provide a comprehensive report.
```

Then wait for the user's input.

## Process Steps

### Step 1: Platform Configuration

1. **Identify cloud platform** from user input
2. **Verify CLI tools are available**:
   - Azure: `az` command
   - AWS: `aws` command
   - GCP: `gcloud` command
3. **Check authentication status**:
   - Verify active login/subscription
   - Confirm appropriate permissions
4. **Set scope parameters**:
   - Region, environment, resource groups
   - Service-specific filters

### Step 2: Infrastructure Discovery

1. **Inventory resources**:
   - List all resources in scope
   - Categorize by service type
   - Note resource relationships
2. **Map architecture**:
   - Network topology
   - Service dependencies
   - Data flow patterns
3. **Document configurations**:
   - Resource specifications
   - Security settings
   - Network configurations

### Step 3: Cost Analysis

1. **Gather cost data**:
   - Current spending patterns
   - Resource-specific costs
   - Usage trends over time
2. **Identify cost drivers**:
   - Most expensive services
   - Underutilized resources
   - Optimization opportunities
3. **Compare with benchmarks**:
   - Industry standards
   - Best practices
   - Previous periods

### Step 4: Security Assessment

1. **Check security posture**:
   - Access controls and permissions
   - Network security settings
   - Data protection measures
2. **Identify vulnerabilities**:
   - Misconfigurations
   - Exposed resources
   - Compliance gaps
3. **Review compliance status**:
   - Regulatory requirements
   - Internal policies
   - Audit findings

### Step 5: Performance Analysis

1. **Evaluate performance metrics**:
   - Resource utilization
   - Response times
   - Availability metrics
2. **Identify bottlenecks**:
   - Resource constraints
   - Network latency
   - Service limitations
3. **Assess scalability**:
   - Auto-scaling configurations
   - Load balancing setup
   - Capacity planning

### Step 6: Generate Cloud Analysis Report

Structure the report with YAML frontmatter followed by content:
```markdown
---
date: [Current date and time in ISO format]
analyst: OpenCode
platform: [Cloud platform]
scope: [Research scope]
---
# Cloud Infrastructure Analysis: [Platform] - [Scope]

## Executive Summary
[High-level findings and recommendations]

## Resource Inventory

### Compute Resources
- [VM instances, containers, serverless functions]
- [Specifications and configurations]

### Storage Resources
- [Storage accounts, buckets, databases]
- [Capacity and usage]

### Network Resources
- [VPCs, subnets, load balancers]
- [Security groups, firewalls]

### Other Services
- [Monitoring, logging, security services]
- [Specialized platform services]

## Architecture Overview
[Visual or textual representation of infrastructure]

## Cost Analysis

### Current Spending
- Total monthly cost: $[amount]
- Cost by service category
- Cost by environment/region

### Cost Optimization Opportunities
- [Underutilized resources]
- [Reserved instance recommendations]
- [Architecture optimizations]

## Security Assessment

### Security Posture
- [Access control summary]
- [Network security status]
- [Data protection measures]

### Vulnerabilities Found
- [Critical issues]
- [High priority issues]
- [Medium priority issues]

### Compliance Status
- [Regulatory compliance]
- [Internal policy adherence]

## Performance Analysis

### Resource Utilization
- [CPU, memory, storage usage]
- [Network throughput]
- [Service response times]

### Bottlenecks Identified
- [Performance constraints]
- [Scaling limitations]
- [Architecture issues]

## Recommendations

### Immediate Actions
1. [Critical fixes]
2. [Security improvements]
3. [Cost savings]

### Medium-term Improvements
1. [Architecture enhancements]
2. [Performance optimizations]
3. [Operational improvements]

### Long-term Strategy
1. [Platform migration opportunities]
2. [Service modernization]
3. [Governance improvements]
```

### Step 7: Save and Present Findings

1. **Save to `thoughts/shared/cloud/[platform]_[scope]_YYYY-MM-DD.md`**
2. **Present executive summary** to the user
3. **Highlight critical findings** requiring immediate attention
4. **Provide next steps** for implementing recommendations

## Important Guidelines

- **READ-ONLY operations only** - Never make changes to infrastructure
- **Respect permissions** - Only access what you're authorized to see
- **Be platform-aware** - Use appropriate CLI commands for each cloud
- **Focus on insights** - Provide actionable intelligence, not just data
- **Prioritize findings** - Highlight critical issues first
- **Be comprehensive but concise** - Cover all areas without overwhelming detail