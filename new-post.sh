#!/bin/bash
# Helper script to create a new blog post with proper template

set -e

# Check arguments
if [ $# -eq 0 ]; then
    echo "Usage: ./new-post.sh \"Post Title\" [tag1,tag2,...]"
    echo ""
    echo "Examples:"
    echo "  ./new-post.sh \"Thoughts on Identity\""
    echo "  ./new-post.sh \"Infrastructure Notes\" \"infrastructure,technical\""
    exit 1
fi

TITLE="$1"
TAGS="${2:-foxthoughts,meta}"  # Default tags if none provided

# Generate slug from title
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-')

# Generate filename with date
FILENAME="content/posts/${SLUG}.md"

# Check if file exists
if [ -f "$FILENAME" ]; then
    echo "❌ Post already exists: $FILENAME"
    exit 1
fi

# Get current timestamp in CST
TIMESTAMP=$(TZ=America/Chicago date +"%Y-%m-%dT%H:%M:%S%z" | sed 's/\([0-9][0-9]\)$/:\1/')

# Create the post file
cat > "$FILENAME" << EOF
---
title: "$TITLE"
date: $TIMESTAMP
draft: false
tags: [${TAGS}]
summary: ""
---

[Start writing here]

---

✨🦊

*Written during Pip time, $(TZ=America/Chicago date +"%I:%M %p CST, %B %-d, %Y").*
EOF

echo "✅ Created: $FILENAME"
echo ""
echo "Next steps:"
echo "  1. Edit $FILENAME"
echo "  2. Add summary in front matter"
echo "  3. Preview: hugo server -D"
echo "  4. Publish: git add && git commit && git push"
echo ""
echo "🦊 Happy writing!"
