#!/bin/bash
# 用法：./deploy.sh ~/Downloads/你的檔案.html
if [ -z "$1" ]; then
  echo "請指定 HTML 檔案路徑，例如："
  echo "  ./deploy.sh ~/Downloads/LWS_新增組織設定_5.html"
  exit 1
fi
cp "$1" index.html
git add index.html
git commit -m "update: $(date '+%Y-%m-%d %H:%M')"
git push
echo "✓ 部署完成，約 30 秒後生效：https://jessicahuang-star.github.io/lws-mockup/"
