# Advent of AI Agents 2025

[25 days in Dec 2025](https://adventofagents.com/). Zero to Production-Ready AI Agents on Google Cloud.

This repository is a replication of the official webpage with my notes, it is not a replacement. I created it just so I don't have to keep ALT+TABbing between windows. And it also serves to document my attempts at doing the exercises and the results. As it is a living document, expect it to change over time.

*ps: I might not do it daily but group days together.*

## December 2025 Advent Calendar

| Mon | Tue | Wed | Thu | Fri | Sat | Sun |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| [1](./days/day-1.md) | [2](./days/day-2.md) | [3](./days/day-3.md) | [4](./days/day-4.md) | [5](./days/day-5.md) | [6](./days/day-6.md) | [7](./days/day-7.md) |
| [8](./days/day-8.md) | [9](./days/day-9.md) | [10](./days/day-10.md) | [11](./days/day-11.md) | [12](./days/day-12.md) | [13](./days/day-13.md) | [14](./days/day-14.md) |
| [15](./days/day-15.md) | [16](./days/day-16.md) | [17](./days/day-17.md) | [18](./days/day-18.md) | [19](./days/day-19.md) | [20](./days/day-20.md) | [21](./days/day-21.md) |
| [22](./days/day-22.md) | [23](./days/day-23.md) | [24](./days/day-24.md) | [25](./days/day-25.md) | | | |

---

## 🚀 Getting Started

Before diving into the daily challenges, make sure your system is ready to run all the code examples!

> **Need detailed installation instructions?** Check out the [HOW-TO-INSTALL.md](./HOW-TO-INSTALL.md) guide for platform-specific steps, troubleshooting, and verification scripts.

### Prerequisites

You'll need the following installed on your system:

- **Python 3.10+** - The Google ADK requires Python 3.10 or higher
- **uvx** - Tool for running Python applications in isolated environments
- **make** (optional) - For running Makefile commands in some examples
- **Google Cloud CLI** (optional) - For deploying to Google Cloud



### Installation

#### 1. Install Python

Check your Python version:
```bash
python --version  # or python3 --version
```

If you need to install or upgrade Python, visit [python.org](https://www.python.org/downloads/)

#### 2. Install uvx

The easiest way to install uvx is via pip:
```bash
pip install uv
```

Or use pipx:
```bash
pipx install uv
```

#### 3. Install Make (if needed)

**macOS/Linux:** Usually pre-installed. Verify with:
```bash
make --version
```

**Windows:** Install via:
- [Chocolatey](https://chocolatey.org/): `choco install make`
- [WSL](https://learn.microsoft.com/en-us/windows/wsl/install): Use Linux subsystem

#### 4. Install Google Cloud CLI (Optional)

For deployment to Google Cloud, install the gcloud CLI:
```bash
# Follow instructions at:
# https://cloud.google.com/sdk/docs/install
```

### Verification

Run the verification script to check your setup:

```bash
# Run the verification script (automatically checks everything)
./verify-setup.sh
```

This will verify:
- ✓ Python 3.10+
- ✓ uv/uvx
- ✓ make
- ✓ Google ADK accessibility
- ✓ Agent Starter Pack
- ✓ Readiness for Days 1-8

**Manual verification** (if needed):
```bash
python --version      # Should be 3.10+
uvx --version         # Should show uv version
make --version        # Should show GNU Make
gcloud --version      # Optional, for cloud deployment
```

### Google Cloud Setup (Optional)

If you plan to deploy agents to Google Cloud:

1. **Create a Google Cloud Project**
   ```bash
   gcloud projects create YOUR-PROJECT-ID
   gcloud config set project YOUR-PROJECT-ID
   ```

2. **Enable required APIs**
   ```bash
   gcloud services enable aiplatform.googleapis.com
   gcloud services enable cloudbuild.googleapis.com
   ```

3. **Authenticate**
   ```bash
   gcloud auth login
   gcloud auth application-default login
   ```

### Quick Test

Try creating your first agent to verify everything works:

```bash
# Create a test agent
uvx --from google-adk adk create test-agent

# Run the web UI
uvx --from google-adk adk web test-agent/
```

If you see the web UI open in your browser, you're all set! 🎉

---
