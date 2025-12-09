# Installation Guide - Advent of Agents 2025

This guide provides detailed installation instructions for all tools needed to complete the Advent of Agents challenges.

## Table of Contents

- [System Requirements](#system-requirements)
- [Python Installation](#python-installation)
- [UV and uvx Installation](#uv-and-uvx-installation)
- [Make Installation](#make-installation)
- [Google Cloud CLI Installation](#google-cloud-cli-installation)
- [Verification](#verification)
- [Troubleshooting](#troubleshooting)

---

## System Requirements

### Minimum Requirements
- **Operating System**: Windows 10+, macOS 10.15+, or Linux (Ubuntu 20.04+, Debian 10+, etc.)
- **RAM**: 4GB minimum, 8GB recommended
- **Disk Space**: 2GB free space
- **Internet Connection**: Required for downloading packages and accessing Google Cloud

### Software Requirements
- Python 3.10 or higher
- pip (Python package manager)
- Git (recommended for version control)

---

## Python Installation

### Check Current Python Version

First, check if Python is already installed:

```bash
python --version
# or
python3 --version
```

If you see version 3.10 or higher, you can skip to [UV Installation](#uv-and-uvx-installation).

### macOS

#### Option 1: Using Homebrew (Recommended)

```bash
# Install Homebrew if not already installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Python
brew install python@3.11

# Verify installation
python3 --version
```

#### Option 2: Official Installer

1. Download from [python.org](https://www.python.org/downloads/macos/)
2. Run the `.pkg` installer
3. Follow the installation wizard
4. Verify installation in Terminal

### Linux (Ubuntu/Debian)

```bash
# Update package list
sudo apt update

# Install Python 3.11
sudo apt install python3.11 python3.11-venv python3-pip

# Make Python 3.11 the default (optional)
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.11 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1

# Verify installation
python3 --version
```

### Linux (Fedora/Red Hat)

```bash
# Install Python 3.11
sudo dnf install python3.11

# Verify installation
python3 --version
```

### Windows

#### Option 1: Using Official Installer (Recommended)

1. Visit [python.org/downloads](https://www.python.org/downloads/)
2. Download Python 3.11+ installer for Windows
3. Run the installer
4. **Important**: Check "Add Python to PATH" during installation
5. Click "Install Now"
6. Verify installation in Command Prompt or PowerShell:
   ```cmd
   python --version
   ```

#### Option 2: Using Microsoft Store

1. Open Microsoft Store
2. Search for "Python 3.11"
3. Click "Get" to install
4. Verify installation

#### Option 3: Using Chocolatey

```powershell
# Install Chocolatey first (if not installed)
# Run PowerShell as Administrator
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install Python
choco install python311

# Verify installation
python --version
```

---

## UV and uvx Installation

UV is a fast Python package installer and resolver. `uvx` is a tool for running Python applications.

### All Platforms (Recommended)

#### Using pip

```bash
# Install uv package (includes uvx)
pip install uv

# Verify installation
uvx --version
```

#### Using pipx (Alternative)

If you prefer isolated installations:

```bash
# Install pipx first
pip install pipx
pipx ensurepath

# Install uv via pipx
pipx install uv

# Verify installation
uvx --version
```

### macOS/Linux (Alternative Installation)

```bash
# Install using official installer
curl -LsSf https://astral.sh/uv/install.sh | sh

# Verify installation
uvx --version
```

### Windows (Alternative Installation)

```powershell
# Using PowerShell
irm https://astral.sh/uv/install.ps1 | iex

# Verify installation
uvx --version
```

### Update PATH (If Needed)

If `uvx` is not found after installation:

**macOS/Linux:**
```bash
# Add to ~/.bashrc or ~/.zshrc
export PATH="$HOME/.local/bin:$PATH"

# Reload shell
source ~/.bashrc  # or source ~/.zshrc
```

**Windows:**
1. Search for "Environment Variables" in Start Menu
2. Click "Environment Variables"
3. Under "User variables", edit "Path"
4. Add: `%USERPROFILE%\.local\bin`
5. Restart terminal

---

## Make Installation

`make` is used for running build commands in some examples.

### macOS

Usually pre-installed. If not:

```bash
# Install Xcode Command Line Tools
xcode-select --install

# Or via Homebrew
brew install make
```

### Linux

Usually pre-installed. If not:

**Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install build-essential
```

**Fedora/Red Hat:**
```bash
sudo dnf install make
```

### Windows

#### Option 1: Using Chocolatey (Recommended)

```powershell
# Run as Administrator
choco install make
```

#### Option 2: Using WSL (Windows Subsystem for Linux)

```powershell
# Install WSL
wsl --install

# After restart, open WSL and install make
sudo apt update
sudo apt install build-essential
```

#### Option 3: Using GnuWin32

1. Download from [GnuWin32 Make](http://gnuwin32.sourceforge.net/packages/make.htm)
2. Run installer
3. Add to PATH: `C:\Program Files (x86)\GnuWin32\bin`

### Verify Installation

```bash
make --version
```

---

## Google Cloud CLI Installation

Required only if you plan to deploy agents to Google Cloud.

### macOS

```bash
# Using Homebrew
brew install --cask google-cloud-sdk

# Or download installer
curl https://sdk.cloud.google.com | bash
exec -l $SHELL

# Initialize gcloud
gcloud init
```

### Linux

```bash
# Add Google Cloud SDK repo
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Import Google Cloud public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Update and install
sudo apt update
sudo apt install google-cloud-cli

# Initialize gcloud
gcloud init
```

### Windows

#### Using Installer (Recommended)

1. Download from [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
2. Run the installer
3. Follow the installation wizard
4. Initialize:
   ```cmd
   gcloud init
   ```

#### Using Chocolatey

```powershell
choco install gcloudsdk
```

### Verify Installation

```bash
gcloud --version
```

### Initial Configuration

After installation, authenticate and set up your project:

```bash
# Login to Google Cloud
gcloud auth login

# Set up application default credentials
gcloud auth application-default login

# Create or select a project
gcloud projects create YOUR-PROJECT-ID
gcloud config set project YOUR-PROJECT-ID

# Enable required APIs
gcloud services enable aiplatform.googleapis.com
gcloud services enable cloudbuild.googleapis.com
```

---

## Verification

Run this comprehensive verification script to check all installations:

### macOS/Linux

Create a file `verify.sh`:

```bash
#!/bin/bash

echo "=== System Verification for Advent of Agents 2025 ==="
echo ""

# Check Python
echo "1. Checking Python..."
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version)
    echo "✓ $PYTHON_VERSION"
else
    echo "✗ Python not found"
fi

# Check pip
echo "2. Checking pip..."
if command -v pip &> /dev/null || command -v pip3 &> /dev/null; then
    echo "✓ pip installed"
else
    echo "✗ pip not found"
fi

# Check uvx
echo "3. Checking uvx..."
if command -v uvx &> /dev/null; then
    UVX_VERSION=$(uvx --version)
    echo "✓ $UVX_VERSION"
else
    echo "✗ uvx not found"
fi

# Check make
echo "4. Checking make..."
if command -v make &> /dev/null; then
    MAKE_VERSION=$(make --version | head -n 1)
    echo "✓ $MAKE_VERSION"
else
    echo "⚠ make not found (optional)"
fi

# Check gcloud
echo "5. Checking gcloud..."
if command -v gcloud &> /dev/null; then
    GCLOUD_VERSION=$(gcloud --version | head -n 1)
    echo "✓ $GCLOUD_VERSION"
else
    echo "⚠ gcloud not found (optional)"
fi

# Test ADK
echo "6. Testing Google ADK..."
if uvx --from google-adk adk --help &> /dev/null; then
    echo "✓ Google ADK accessible"
else
    echo "✗ Google ADK not accessible"
fi

echo ""
echo "=== Verification Complete ==="
```

Run it:
```bash
chmod +x verify.sh
./verify.sh
```

### Windows (PowerShell)

Create a file `verify.ps1`:

```powershell
Write-Host "=== System Verification for Advent of Agents 2025 ===" -ForegroundColor Cyan
Write-Host ""

# Check Python
Write-Host "1. Checking Python..." -ForegroundColor Yellow
try {
    $pythonVersion = python --version 2>&1
    Write-Host "✓ $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Python not found" -ForegroundColor Red
}

# Check pip
Write-Host "2. Checking pip..." -ForegroundColor Yellow
try {
    pip --version | Out-Null
    Write-Host "✓ pip installed" -ForegroundColor Green
} catch {
    Write-Host "✗ pip not found" -ForegroundColor Red
}

# Check uvx
Write-Host "3. Checking uvx..." -ForegroundColor Yellow
try {
    $uvxVersion = uvx --version 2>&1
    Write-Host "✓ $uvxVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ uvx not found" -ForegroundColor Red
}

# Check make
Write-Host "4. Checking make..." -ForegroundColor Yellow
try {
    make --version | Out-Null
    Write-Host "✓ make installed" -ForegroundColor Green
} catch {
    Write-Host "⚠ make not found (optional)" -ForegroundColor Yellow
}

# Check gcloud
Write-Host "5. Checking gcloud..." -ForegroundColor Yellow
try {
    $gcloudVersion = gcloud --version 2>&1 | Select-Object -First 1
    Write-Host "✓ $gcloudVersion" -ForegroundColor Green
} catch {
    Write-Host "⚠ gcloud not found (optional)" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "=== Verification Complete ===" -ForegroundColor Cyan
```

Run it:
```powershell
.\verify.ps1
```

---

## Troubleshooting

### Python Issues

**Problem**: `python: command not found`

**Solution**:
- Try `python3` instead of `python`
- Verify Python is in your PATH
- Reinstall Python and check "Add to PATH" option

**Problem**: Wrong Python version

**Solution**:
```bash
# Use pyenv to manage multiple Python versions
curl https://pyenv.run | bash
pyenv install 3.11
pyenv global 3.11
```

### uvx Issues

**Problem**: `uvx: command not found`

**Solution**:
1. Verify uv installation: `pip show uv`
2. Check PATH includes pip's bin directory
3. Reinstall: `pip install --force-reinstall uv`

**Problem**: Permission denied when installing

**Solution**:
```bash
# Use --user flag
pip install --user uv

# Or use pipx
pip install --user pipx
pipx install uv
```

### Make Issues on Windows

**Problem**: `make: command not found` on Windows

**Solution**:
- Install WSL and use Linux environment
- Install via Chocolatey: `choco install make`
- Use `nmake` (comes with Visual Studio) as alternative

### Google Cloud CLI Issues

**Problem**: Authentication fails

**Solution**:
```bash
# Clear existing credentials
gcloud auth revoke

# Re-authenticate
gcloud auth login
gcloud auth application-default login
```

**Problem**: API not enabled errors

**Solution**:
```bash
# Enable required APIs
gcloud services enable aiplatform.googleapis.com
gcloud services enable cloudbuild.googleapis.com
gcloud services enable compute.googleapis.com
```

### Network Issues

**Problem**: Downloads failing or slow

**Solution**:
- Check firewall settings
- Try using a VPN if behind corporate proxy
- Use alternative installation methods (e.g., offline installers)

### General Tips

1. **Restart your terminal** after installations to refresh PATH
2. **Use virtual environments** to avoid conflicts:
   ```bash
   python -m venv advent-env
   source advent-env/bin/activate  # macOS/Linux
   advent-env\Scripts\activate     # Windows
   ```
3. **Update pip** before installing packages:
   ```bash
   pip install --upgrade pip
   ```

---

## Next Steps

Once all installations are complete:

1. ✓ Verify your setup using the verification scripts above
2. ✓ Return to the [README](./README.md)
3. ✓ Start with [Day 1](./days/day-1.md)
4. ✓ Join the community at [adventofagents.com](https://adventofagents.com/)

Happy coding! 🎉
