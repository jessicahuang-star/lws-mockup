# LWS SaaS Mockup 專案指示

- 在這個資料夾工作時,一律先依照 `coolbe-lws-mockup` skill 的流程(`~/.claude/skills/coolbe-lws-mockup/SKILL.md`),裡面有完整的模組地圖(2.x 使用者 ~ 9.x 郵件)、定位/驗證/部署步驟與 Figma 同步慣例。
- **絕不整檔讀取 `index.html`**:這是約 1.2MB、18,500+ 行的單頁應用,整檔 Read 會直接撐爆 context。一律先 `grep -n 'id="page-X.Y"'` 定位目標區段的起訖行號,再用 Read 的 offset/limit 只讀該區段。
- **部署**(使用者明確說「部署」「上線」才做):
  ```bash
  ./deploy.sh "<html檔完整路徑>"
  ```
  會把指定檔案複製成 `index.html`、commit、push,約 30 秒後 GitHub Pages 生效:https://jessicahuang-star.github.io/lws-mockup/
- **修改處註解慣例**:用 `<!-- ===== [修改開始] ... ===== -->` 標記本次改動的區段,沿用既有寫法,方便下次定位與 code review。
- 這個 repo 有 git 版本控制,文件類覆蓋不用另外存 `_備份_` 檔;Jessica 需要留底時會自己手動另存(例如 `LWS_調整0707_backup_0720.html` 這種命名)。
