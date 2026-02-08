#!/bin/bash

# OpenCode Framework Update Script
# This script helps update the framework in your repository

echo "🔄 OpenCode Framework Update"
echo "==========================="
echo ""

# Get target directory
if [ -z "$1" ]; then
    read -p "Enter the path to your repository: " TARGET_DIR
else
    TARGET_DIR="$1"
fi

# Validate target directory
if [ ! -d "$TARGET_DIR" ]; then
    echo "❌ Error: Directory '$TARGET_DIR' does not exist"
    exit 1
fi

# Check if .opencode exists
if [ ! -d "$TARGET_DIR/.opencode" ]; then
    echo "❌ Error: .opencode directory not found in $TARGET_DIR"
    echo "💡 Run setup.sh first to install the framework"
    exit 1
fi

echo "📥 Updating framework files..."
echo ""

# Update commands
echo "  Updating commands..."
for cmd_file in .opencode/commands/*.md; do
    filename=$(basename "$cmd_file")
    cp "$cmd_file" "$TARGET_DIR/.opencode/commands/"
    echo "    🔄 Updated $filename"
done

# Update agents
echo "  Updating agents..."
for agent_file in .opencode/agents/*.md; do
    filename=$(basename "$agent_file")
    cp "$agent_file" "$TARGET_DIR/.opencode/agents/"
    echo "    🔄 Updated $filename"
done

# Update playbook if it exists
if [ -f "$TARGET_DIR/PLAYBOOK.md" ]; then
    cp PLAYBOOK.md "$TARGET_DIR/"
    echo "  🔄 Updated PLAYBOOK.md"
else
    cp PLAYBOOK.md "$TARGET_DIR/"
    echo "  ✅ Installed PLAYBOOK.md"
fi

echo ""
echo "🎉 Framework Update Complete!"
echo "============================="
echo ""
echo "Framework updated in: $TARGET_DIR"
echo ""
echo "📋 Update Summary:"
echo "- Commands and agents updated to latest versions"
echo "- PLAYBOOK.md updated with latest documentation"
echo ""
echo "💡 Your research documents and plans are preserved"
echo "💡 Customizations to command files are preserved"
echo ""
echo "To verify the update:"
echo "1. Check $TARGET_DIR/.opencode/ for new files"
echo "2. Review any changes to existing command files"
echo ""
echo "Happy coding! 🚀"