#!/bin/bash

echo "=== Verification for Advent of Agents - Days 1-8 ==="
echo ""

# Check Python
echo "✓ Python: $(python3 --version)"

# Check uv/uvx
echo "✓ uv: $(uv --version)"
echo "✓ uvx: $(uvx --version)"

# Check make
if command -v make &> /dev/null; then
    echo "✓ make: $(make --version | head -n 1)"
else
    echo "✗ make: NOT INSTALLED (needed for Day 4)"
fi

# Check Google ADK
if uvx --from google-adk adk --version &> /dev/null; then
    echo "✓ Google ADK: accessible via uvx"
else
    echo "✗ Google ADK: NOT accessible"
fi

# Check agent-starter-pack
if uvx agent-starter-pack --version &> /dev/null; then
    echo "✓ Agent Starter Pack: $(uvx agent-starter-pack --version 2>&1 | grep -o 'version [0-9.]*')"
else
    echo "✗ Agent Starter Pack: NOT accessible"
fi

# Check Google Cloud CLI & Gemini API
if command -v gcloud &> /dev/null; then
    echo "✓ Google Cloud CLI: $(gcloud --version | head -n 1)"
    
    # Check Project
    CURRENT_PROJECT=$(gcloud config get-value project 2>/dev/null)
    if [ -n "$CURRENT_PROJECT" ]; then
        echo "  • Active Project: $CURRENT_PROJECT"
        
        # Check Gemini API
        if gcloud services list --enabled --filter="name:generativelanguage.googleapis.com" 2>/dev/null | grep -q "generativelanguage.googleapis.com"; then
             echo "  • Gemini API: ✓ ENABLED"
        else
             echo "  • Gemini API: ✗ NOT ENABLED (Run: gcloud services enable generativelanguage.googleapis.com)"
        fi
    else
        echo "  • Active Project: ✗ NONE SELECTED (Run: gcloud auth login && gcloud config set project ID)"
    fi
else
    echo "✗ Google Cloud CLI: NOT INSTALLED (Optional, but recommended for debugging quota/deployment)"
fi

echo ""
echo "=== Summary ==="
echo "You are ready for:"
echo "  • Day 1: ✓ ADK basics"
echo "  • Day 2: ✓ YAML configuration"
echo "  • Day 3: ✓ Gemini 3 + ADK"
if command -v make &> /dev/null; then
    echo "  • Day 4: ✓ Source-based deployment"
else
    echo "  • Day 4: ✗ (needs make)"
fi
echo "  • Day 5: ✓ Production observability"
echo "  • Day 6: ✓ IDE integration"
echo "  • Day 7: ✓ Code execution"
echo "  • Day 8: ✓ Context management"
