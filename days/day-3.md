# Day 3 - Gemini 3 + ADK

**Wednesday, December 3rd**

Build a powerful AI Agent utilizing Gemini 3 and ADK, featuring native support for Google Search grounding, computer use, and real-time streaming.

## Overview

This day focuses on building AI agents using Gemini 3 and the Agent Development Kit, incorporating advanced features like Google Search grounding, computer use capabilities, and real-time streaming.

## Key Features

- **Google Search grounding**: Native access to real-time web data
- **Computer use**: Agents that navigate and interact with UIs
- **Live API**: Real-time streaming for voice and video agents
- **Native observability**: Full visibility into Gemini calls, tool use, and agent reasoning

## Resources

### Video
- [Build AI Agent with Gemini 3](https://youtu.be/9EGtawwvlNs)

### Links
- [Gemini 3 Pro Agent Demo code](https://github.com/GoogleCloudPlatform/devrel-demos/tree/main/ai-ml/agent-labs/gemini-3-pro-agent-demo)
- [Google ADK Search-tool Docs](https://google.github.io/adk-docs/tools/built-in-tools/#available-built-in-tools)
- [Gemini 3 Announcement](https://blog.google/products/gemini/gemini-3/#gemini-3)


## Tasks

- [x] Explore Gemini 3 capabilities with ADK
- [x] Try implementing Google Search grounding
- [ ] Experiment with real-time streaming

## Code

Build an ADK Agent with Gemini 3 and Google Search:

```bash
# one liner with agent-starter-pack
uvx agent-starter-pack create -y --api-key YOUR_GEMINI_API_KEY
```

```bash
# using ADK CLI
uv init
uv add google-adk
uv add google-genai
export GOOGLE_API_KEY="YOUR_API_KEY"
source .venv/bin/activate
adk create my_agent
```



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

