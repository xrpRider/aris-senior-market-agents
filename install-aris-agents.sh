#!/bin/bash
# ============================================================
# ARIS Senior Market Agents - Claude Code Installer
# Sean McKenna | xrpRider | github.com/xrpRider/aris-senior-market-agents
# ============================================================
# Usage:
#   chmod +x install-aris-agents.sh
#   ./install-aris-agents.sh
# ============================================================

set -e

CLAUDE_AGENTS_DIR="$HOME/.claude/agents"
ARIS_AGENTS_DIR="./aris-senior-market"

echo ""
echo "============================================"
echo "  ARIS Senior Market Agent Installer"
echo "  for Claude Code"
echo "  Sean McKenna | xrpRider"
echo "============================================"
echo ""

# Check if Claude Code agents directory exists
if [ ! -d "$CLAUDE_AGENTS_DIR" ]; then
  echo "Creating Claude Code agents directory at $CLAUDE_AGENTS_DIR..."
  mkdir -p "$CLAUDE_AGENTS_DIR"
fi

# Check if aris-senior-market folder exists
if [ ! -d "$ARIS_AGENTS_DIR" ]; then
  echo "ERROR: aris-senior-market folder not found."
  echo "Please run this script from the root of the aris-senior-market-agents repo."
  exit 1
fi

# Copy all ARIS agents to Claude Code agents directory
echo "Installing ARIS agents to $CLAUDE_AGENTS_DIR..."
echo ""

for agent_file in "$ARIS_AGENTS_DIR"/*.md; do
  agent_name=$(basename "$agent_file")
  cp "$agent_file" "$CLAUDE_AGENTS_DIR/$agent_name"
  echo "  ✓ Installed: $agent_name"
done

echo ""
echo "============================================"
echo "  Installation Complete!"
echo "============================================"
echo ""
echo "8 ARIS agents installed:"
echo "  • aris-supervisor.md"
echo "  • aris-lead-flow-director.md"
echo "  • aris-compliance-guardian.md"
echo "  • aris-comp-vesting-analyst.md"
echo "  • aris-client-success-coach.md"
echo "  • aris-health-intelligence-advisor.md"
echo "  • aris-recruiting-engine.md"
echo "  • aris-amp-campaign-optimizer.md"
echo ""
echo "To use in Claude Code, type:"
echo "  'Activate ARIS Supervisor'"
echo "  'Activate ARIS Lead Flow Director'"
echo "  'Activate ARIS Compliance Guardian'"
echo "  ...etc"
echo ""
echo "Or ask the Supervisor to route your request automatically."
echo ""
echo "Claude.ai Project System Prompt:"
echo "  Upload the /aris-senior-market/*.md files to your Claude.ai Project"
echo "  as Knowledge files, then set the custom instruction to:"
echo "  'You are the ARIS Supervisor. Route all requests to the appropriate"
echo "   ARIS specialist agent and respond in their voice.'"
echo ""
