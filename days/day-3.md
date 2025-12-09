# Day 3 - Gemini 3 + ADK

**Wednesday, December 3rd**

Build a powerful AI Agent utilizing Gemini 3 and ADK, featuring native support for Google Search grounding, computer use, and real-time streaming.

## Overview

This day focuses on building AI agents using Gemini 3 and the Agent Development Kit, incorporating advanced features like Google Search grounding, computer use capabilities, and real-time streaming.

## Key Features

- Native Google Search grounding
- Computer use integration
- Real-time streaming capabilities
- Powered by Gemini 3

## Resources

### Videos
- [Week 1 Recap: Zero to Production-Ready (Days 1-7)](https://youtube.com) - Comprehensive overview

### Documentation
- [Advent of Agents](https://adventofagents.com/)
- [Google ADK Documentation](https://google.github.io/adk-docs/)
- [Agent Engine Quickstart](https://cloud.google.com/ai-platform/agent-engine/docs/quickstart)
- [Gemini API Code Execution](https://ai.google.dev/gemini-api/docs/code-execution)

## Tasks

- [ ] Explore Gemini 3 capabilities with ADK
- [ ] Try implementing Google Search grounding
- [ ] Experiment with real-time streaming

## Code

Build an ADK Agent with Gemini 3 and Google Search:

```bash
# Create a new ADK agent
uvx --from google-adk adk create my-gemini-agent

# Navigate to project folder and run web UI
cd my-gemini-agent
uvx --from google-adk adk web
```

Example `agent.py` configuration:

```python
from google.adk.agents import Agent

agent = Agent(
    model="gemini-3-pro-preview",
    tools=["google_search"],  # Built-in Google Search grounding
    # Add real-time streaming and computer use capabilities
)
```

