# Team Configuration Guide

This guide explains how to create and manage team configurations for the incident.io catalog-importer.

## Overview

We use YAML files to define team configurations that are automatically imported into incident.io's catalog. These configurations help maintain consistent team information across our incident management system.

## Creating a Team Configuration File

### File Location

Place your team configuration YAML file in the `teams/` directory with a filename matching your team's ID, for example: `teams/sre.yaml`.

### Required Format

Each team configuration must be a YAML file with the following structure:

```yaml
external_id: [team-id]                # Unique identifier for the team
name: [Team Name]                     # Display name for the team
description: [Team description]       # Brief team description
engineering_manager: [email or id]    # Team's engineering manager
tech_lead: [email or id]              # Team's tech lead
slack_channel: [Slack channel]        # Main team Slack channel
alert_channel: [Alert channel]        # Channel for team alerts
members:                              # List of team members
  - [member1]
  - [member2]
  - [member3]
escalation_policy:                    # Optional: Team's escalation policy
  time_zone: [Time zone]              # e.g., America/Sao_Paulo
  levels: [Number]                    # Number of escalation levels
  minutes_between_levels: [Number]    # Minutes between escalation levels
  loops: [Number]                     # Number of escalation loops
```

### Example

Here's an example for an SRE team configuration:

```yaml
external_id: sre
name: SRE
description: Responsible for all product features that come after closing an incident.
engineering_manager: henrique.pettenuci
tech_lead: karina.guizelli
slack_channel: "#sre-only-team"
alert_channel: "#br-pagerduty-alerts"
members:
  - yuri.santos
  - alvaro.carvalho
escalation_policy:
  time_zone: America/Sao_Paulo
  levels: 3
  minutes_between_levels: 15
  loops: 5
```

## Field Descriptions

| Field | Description | Required |
|-------|-------------|----------|
| `external_id` | Unique identifier for the team (lowercase, no spaces) | Yes |
| `name` | Display name for the team | Yes |
| `description` | Brief description of the team's responsibilities | Yes |
| `engineering_manager` | User ID or email of the team's engineering manager | Yes |
| `tech_lead` | User ID or email of the team's technical lead | Yes |
| `slack_channel` | Main Slack channel used by the team (include # prefix) | Yes |
| `alert_channel` | Slack channel where alerts are sent (include # prefix) | Yes |
| `members` | List of team members (user IDs or emails) | Yes |
| `escalation_policy` | Configuration for the team's escalation policy | No |

### Escalation Policy Fields

| Field | Description | Required |
|-------|-------------|----------|
| `time_zone` | Time zone for escalations (e.g., America/Sao_Paulo) | Yes |
| `levels` | Number of escalation levels | Yes |
| `minutes_between_levels` | Minutes to wait between escalation levels | Yes |
| `loops` | Number of times to loop through all levels | Yes |

## Validation Rules

- `external_id` must be lowercase with no spaces
- `slack_channel` and `alert_channel` must include the `#` prefix
- All required fields must be present
- Member IDs must be valid users in the system

## Import Process

After adding or updating your team YAML file:

1. The configuration will be automatically imported during the next scheduled run
2. You can trigger a manual import with:
   ```
   catalog-importer import --config importer.jsonnet
   ```

## Troubleshooting

If your import fails, check for:

- Syntax errors in your YAML file
- Missing required fields
- Invalid user IDs or emails
- Incorrect Slack channel names

For more help, contact the SRE team at #sre-only-team.