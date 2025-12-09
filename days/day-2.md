
## Day 2 - Hello World with YAML
Build your first AI agent with Gemini 3 in under 5 minutes without writing a single line of code.

No Python. No coding. Just YAML.

### Tasks

 - [ ] Try building a multi-agent app with MCP using Google ADK (pure YAML).

### Resources

- [ADK YAML screencast](https://youtu.be/bPGf51XBJ44)
- [ADK Agent Config docs](https://google.github.io/adk-docs/agents/config/)
- Tutorial: AI Agent with Google Search by @ShubhamSaboo [Step-by-step tutorial (an X.com thread)](https://x.com/Saboo_Shubham_/status/1971038699329908885)
- [Build a Multi-agent app with MCP using Google ADK](https://x.com/Saboo_Shubham_/status/1971763476818547010)
- [Third-party MCP tools with ADK](https://google.github.io/adk-docs/tools/third-party/)

### Code

```bash
uvx --from google-adk adk create --type=config my_agent
uvx --from google-adk adk web my_agent/
``` 
