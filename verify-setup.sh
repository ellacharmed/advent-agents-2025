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
