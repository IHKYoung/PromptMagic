# 定义提交 Emoji 列表
$emojis = @("🚀", "✨", "📝", "🐛", "🔥", "🔧", "🎉", "💡", "🔨", "💥")
# 随机选择一个 Emoji
$randomEmoji = Get-Random -InputObject $emojis
# 获取当前日期
$currentDate = Get-Date -Format "yyyy-MM-dd"

# 执行 git pull
git pull

# 执行 git add
git add .

# 自动构建提交消息
$commitMessage = "$randomEmoji Auto commit on $currentDate"

# 执行 git commit
git commit -m $commitMessage

# 执行 git push
git push
