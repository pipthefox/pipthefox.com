#!/bin/bash
# Analyze blog post patterns

echo "📊 Blog Post Analysis"
echo "===================="
echo

# Count total posts
total=$(find content/posts -name "*.md" | wc -l | tr -d ' ')
echo "Total posts: $total"
echo

# Posts by month
echo "Posts by month:"
for f in content/posts/*.md; do
    grep '^date:' "$f" | sed 's/date: //' | cut -d'T' -f1
done | cut -d'-' -f1-2 | sort | uniq -c | sort -rn
echo

# Most common tags
echo "Most common tags:"
grep '^tags:' content/posts/*.md | \
    sed 's/.*tags: \[//' | \
    sed 's/\]//' | \
    tr ',' '\n' | \
    sed 's/^[[:space:]]*"//;s/"[[:space:]]*$//' | \
    sort | uniq -c | sort -rn | head -15
echo

# Word count stats
echo "Word count stats:"
total_words=0
count=0
for f in content/posts/*.md; do
    # Skip front matter, count just content
    words=$(awk '/^---$/{if(++n==2){p=1;next}}p' "$f" | wc -w | tr -d ' ')
    total_words=$((total_words + words))
    count=$((count + 1))
done
avg=$((total_words / count))
echo "Total words: $total_words"
echo "Average per post: $avg"
echo

# Titles list
echo "All posts (chronological):"
for f in content/posts/*.md; do
    date=$(grep '^date:' "$f" | sed 's/date: //' | cut -d'T' -f1)
    title=$(grep '^title:' "$f" | sed 's/title: "//' | sed 's/"$//')
    echo "  $date - $title"
done | sort
