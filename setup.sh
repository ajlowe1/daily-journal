#!/bin/bash

# Daily Journaling System Setup Script
# Sets up the folder structure for Claude Code daily journaling

echo "🌅 Setting up Daily Journaling System for Claude Code..."
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Create journal folder structure
echo "${BLUE}📁 Creating folder structure...${NC}"
mkdir -p journal/daily/entries
mkdir -p journal/daily/reflections
echo "${GREEN}✓${NC} Created journal/daily/entries/"
echo "${GREEN}✓${NC} Created journal/daily/reflections/"
echo ""

# Create .gitkeep files to preserve folder structure in git
echo "${BLUE}📌 Creating .gitkeep files...${NC}"
touch journal/daily/entries/.gitkeep
touch journal/daily/reflections/.gitkeep
echo "${GREEN}✓${NC} Created .gitkeep files"
echo ""

# Create .claude/commands directory if it doesn't exist
echo "${BLUE}📂 Setting up Claude Code commands directory...${NC}"
mkdir -p .claude/commands
echo "${GREEN}✓${NC} Created .claude/commands/"
echo ""

# Check if daily-checkin.md command file exists
if [ -f ".claude/commands/daily-checkin.md" ]; then
    echo "${GREEN}✓${NC} daily-checkin.md command already exists"
else
    echo "${YELLOW}⚠${NC}  daily-checkin.md not found in .claude/commands/"
    echo "   This file should be included in the repository."
    echo "   If missing, please ensure it's copied to .claude/commands/"
fi
echo ""

# Summary
echo "${GREEN}✅ Setup Complete!${NC}"
echo ""
echo "Your folder structure:"
echo "  journal/"
echo "  └── daily/"
echo "      ├── entries/      ${BLUE}(Your raw check-in responses)${NC}"
echo "      └── reflections/  ${BLUE}(AI-generated insights)${NC}"
echo ""
echo "Next steps:"
echo "  1. Ensure .claude/commands/daily-checkin.md exists"
echo "  2. Run your first check-in:"
echo ""
echo "     ${BLUE}claude /daily-checkin${NC}"
echo ""
echo "  3. Answer the prompts honestly (5-10 minutes)"
echo "  4. Review your reflection in journal/daily/reflections/"
echo ""
echo "${YELLOW}Note:${NC} Your personal entries are protected by .gitignore"
echo "      They won't be committed to git."
echo ""
echo "📚 For full documentation, see CLAUDE.md"
echo ""
echo "${GREEN}Happy journaling! ✨${NC}"
echo ""
