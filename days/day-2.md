
# Day 2 - Hello World with YAML
Build your first AI agent with Gemini 3 in under 5 minutes without writing a single line of code.

No Python. No coding. Just YAML.

## Tasks

 - [x] Try building a multi-agent app with MCP using Google ADK (pure YAML). 
   - Sample code from @ShubhamSaboo demonstrates creating MCP agents with [Google ADK and Firecrawl API](https://google.github.io/adk-docs/tools/third-party/firecrawl/)
   - Pre-requisites: Sign up on [Firecrawl](https://www.firecrawl.dev/signin) and get an API key

### Video

- [ADK YAML screencast](https://youtu.be/bPGf51XBJ44)

### Resources

- [ADK Agent Config docs](https://google.github.io/adk-docs/agents/config/)
- Tutorial: AI Agent with Google Search by @ShubhamSaboo [Step-by-step tutorial (an X.com thread)](https://x.com/Saboo_Shubham_/status/1971038699329908885)
- [Build a Multi-agent app with MCP using Google ADK](https://x.com/Saboo_Shubham_/status/1971763476818547010) (another X.com thread)
- [Third-party MCP tools with ADK](https://google.github.io/adk-docs/tools/third-party/)
- [Awesome LLM Apps](https://github.com/Shubhamsaboo/awesome-llm-apps), more code examples from @ShubhamSaboo

### Code

Get started with Google ADK:

```bash
# Install and create your first agent
uvx --from google-adk adk create my-first-agent

# Run the web UI
uvx --from google-adk adk web my-first-agent/
```

```bash
# used twitter thread's instructions
uv add google-adk
# changed from my-first-agent
adk create --type=config my_first_agent 
adk web my_first_agent/
```

```bash
# for MCP agent task
uv run --env-file .env -- adk web
```

### Notes

To summarize, the key gotchas were:

- Renaming the folder: hyphens vs underscores, changing my-first-agent (invalid) to my_first_agent (valid Python identifier).
- Updating the Agent Name: Ensuring name: my_first_agent in 
root_agent.yaml matches the folder name.
- Running Context: Running adk web from the project root so it can discover the agent module. Then select the agent from the dropdown.
- For the MCP agent, I needed to run adk web from the project root so it can discover the agent module. And run with the env loaded from CLI as this is not loaded by default. Remember this is a .yaml file and not a .py file. So it doesn't have access to the environment variables by default.
