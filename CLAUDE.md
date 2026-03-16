# ishida-tsutsumi-map

## 概要
1590年ごろの関東平野の河川水系を Leaflet.js で可視化する Web アプリ。石田三成の忍城水攻めの歴史的文脈を地図上で把握する。GitHub Pages で公開。

## リポジトリ情報
- パス: `~/Claude/ishida-tsutsumi-map/`
- ブランチ: `main`
- リモート: `odakin/ishida-tsutsumi-map` (public, GitHub)
- 公開URL: https://odakin.github.io/ishida-tsutsumi-map/

## 構造
```
ishida-tsutsumi-map/
├── CLAUDE.md
├── SESSION.md
├── README.md
├── CHANGELOG.md
├── index.html                      # 最新版 (v20)
├── v18.html / v4.html              # アーカイブ
├── data/
│   ├── rivers_wide_overpass.json   # 河川線データ (OSM キャッシュ)
│   └── query_rivers_wide.overpass
└── scripts/
    └── update_rivers_data.sh       # キャッシュ更新
```

## 実行環境
- 言語: HTML / JavaScript (Leaflet.js)
- 依存: なし (ブラウザで直接開く)
- 実行: `open index.html` または GitHub Pages

## How to Resume（autocompact 復帰手順）
**autocompact 後・新規セッション開始時、必ずこの手順を実行:**
1. `SESSION.md` を読む → 現在の作業状態と次のステップを把握
2. SESSION.md の「次のステップ」に従って作業を継続
3. 不明点があればユーザーに確認

## 自動更新ルール（必須）
以下を人間に言われなくても自動で行う:
- タスク完了時 → SESSION.md を更新（完了マーク + 成果物記録）
- 重要な判断時 → SESSION.md に決定事項を記録
- ファイル作成/大幅変更時 → SESSION.md に記録
- CLAUDE.md のルールの詳細は `~/Claude/CONVENTIONS.md` 参照
