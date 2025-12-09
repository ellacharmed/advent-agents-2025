# Day 1 - The Launch Initiative

**Monday, December 1st**

## Overview

Introduction to the 25-day program focused on achieving "Zero to Production-Ready AI Agents on Google Cloud." This day introduces Gemini 3 and the Google Agent Development Kit (ADK).

## Resources

### Videos
- [Launch video](https://youtu.be/aYG7h20YNB0)


### Documentation
- [Google ADK: The Agent Development Kit (Python)](https://cloud.google.com/ai-platform/agent-engine/docs/quickstart)
- [Vertex AI Agent Engine: Deploy an Agent in minutes](https://cloud.google.com/ai-platform/agent-engine/docs/quickstart)
- [The Agent Starter Pack: E2E production-ready templates](https://cloud.google.com/ai-platform/agent-engine/docs/quickstart)
- [Advent of Agents](https://adventofagents.com/)

### Recommended Reading

- [Introduction to Agents](https://www.kaggle.com/whitepaper-introduction-to-agents) whitepaper, released as part of the [5 Days of Agents with Kaggle](https://www.kaggle.com/learn-guide/5-day-agents)

## Tasks

- [x] Read the Introduction to Agents whitepaper
- [ ] Explore Google ADK and Agent Engine documentation
- [x] Set up your development environment

## Code

Get started with Google ADK:

```bash
# Install and create your first agent
uvx --from google-adk adk create my-first-agent

# Run the web UI
uvx --from google-adk adk web my-first-agent/
```