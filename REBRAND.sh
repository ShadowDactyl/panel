#!/bin/bash
# Shadowdactyl Rebranding Script
# This script replaces all Pterodactyl references with Shadowdactyl

echo "🔄 Starting Shadowdactyl rebranding process..."

# Function to replace text in files
replace_in_files() {
    local pattern=$1
    local replacement=$2
    echo "   Replacing '$pattern' → '$replacement'..."
    
    # Find all text files (exclude git, node_modules, vendor, etc.)
    find . -type f \
        -not -path './.git/*' \
        -not -path './node_modules/*' \
        -not -path './vendor/*' \
        -not -path './.github/*' \
        -not -path './storage/*' \
        -not -path './bootstrap/cache/*' \
        \( -name "*.php" -o -name "*.js" -o -name "*.jsx" -o -name "*.ts" -o -name "*.tsx" \
           -o -name "*.md" -o -name "*.json" -o -name "*.env*" -o -name "*.yml" \
           -o -name "*.yaml" -o -name "*.xml" -o -name "*.blade.php" \
           -o -name "*.html" -o -name "*.css" -o -name "*.scss" \) \
        -type f \
        -exec sed -i "s/$pattern/$replacement/g" {} + 2>/dev/null
}

# Replace in order (case-sensitive and case-insensitive)
echo "📝 Replacing text patterns..."

# 1. PTERODACTYL (ALL CAPS)
replace_in_files "PTERODACTYL" "SHADOWDACTYL"

# 2. Pterodactyl (Title Case)
replace_in_files "Pterodactyl" "Shadowdactyl"

# 3. pterodactyl (lowercase)
replace_in_files "pterodactyl" "shadowdactyl"

# 4. PteroDactyl (specific variations)
replace_in_files "PteroDactyl" "ShadowDactyl"

# 5. Replace pterodactyleggs.com with shadowdactyl equivalent
replace_in_files "pterodactyleggs.com" "shadowdactyl.qzz.io"

# 6. Replace pterodactyl.io references (keep some as-is if needed for docs)
replace_in_files "pterodactyl.io" "shadowdactyl.qzz.io"

# 7. Update Discord URLs if present
replace_in_files "discord.gg/pterodactyl" "discord.gg/shadowdactyl"

echo "✅ Rebranding complete!"
echo ""
echo "Next steps:"
echo "1. Review changes: git diff"
echo "2. Test the application thoroughly"
echo "3. Update your branding assets (logos, colors, etc.)"
echo "4. Commit and push: git add . && git commit -m 'Rebrand: Pterodactyl → Shadowdactyl'"
