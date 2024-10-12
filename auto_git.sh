#!/bin/sh

# 定义提交 Emoji 列表
emojis=("🚀" "✨" "📝" "🐛" "🔥" "🔧" "🎉" "💡" "🔨" "💥")
# 随机选择一个 Emoji
randomEmoji=${emojis[$((RANDOM % ${#emojis[@]}))]}
# 获取当前日期
currentDate=$(date +%Y-%m-%d)

# 执行 git pull
git pull

# 执行 git add
git add .

# 自动构建提交消息
commitMessage="$randomEmoji Auto commit on $currentDate"

# 执行 git commit
git commit -m "$commitMessage"

# 执行 git push
git push
