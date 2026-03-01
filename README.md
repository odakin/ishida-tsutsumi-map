# 石田堤（忍城水攻め）＋1590年前後の旧河道オーバーレイ

> Interactive overlay map of the pre-Edo river network around 1590, including the Ishida Tsutsumi embankment.

更新日: 2026-03-01（v20）

公開URL:
- https://odakin.github.io/ishida-tsutsumi-map/

---

## プロジェクト概要

このリポジトリは **1590年ごろの関東平野の河川水系** を地図上に再現する Webアプリです。
GitHub Pages 上で配信される 1枚の HTML（Leaflet）地図として動作します。

**目的**: 利根川東遷（江戸時代初期以前）・荒川西遷以前の水系を OSM データを用いて可視化し、
石田三成の忍城水攻め（1590年）の歴史的文脈を地図上で把握すること。

注意: 本地図は"復元図"ではなく、現存河道・地形タイル・推定線を重ねた可視化です（推定を含みます）。

---

## デモ / 使い方

**公開ページ**: https://odakin.github.io/ishida-tsutsumi-map/

またはリポジトリをクローンして `index.html` をブラウザで直接開いてください。

### 地図の操作

| 操作 | 方法 |
|------|------|
| スクロール・ズーム | マウスホイール / ピンチ |
| レイヤー ON/OFF | 右上のレイヤーコントロール |
| 治水地形分類図の透過度 | 左パネルのスライダー |
| 表示範囲リセット | 左パネル「表示範囲をリセット」ボタン |
| 石田堤付近へ移動 | 左パネル「石田堤付近へ」ボタン |
| 河川線データ再取得 | 左パネル「河川線データを再読み込み」ボタン |

---

## 描画している河川一覧（v20）

### 【利根川水系】（新規追加）
- **利根川 Q1**（熊谷〜深谷の主流）
- **利根川 12水系**（行田〜羽生エリアの支流群）
- **利根川 Q2**（栗橋〜古河方面）
- **会の川**（加須市周辺）
- **青毛堀川**（久喜〜加須）
- **松原落排水路**
- **古利根川排水路**
- **中川南東**（春日部〜野田方面）
- **十王堀排水路**

### 【荒川水系】（新規追加）
- **荒川上流**（秩父〜熊谷・深谷の1590年当時の流路）

### 【既存河川】
- 旧利根川（古利根川 / 大落古利根川）
- 旧利根川本流（中川・綾瀬川）
- 旧荒川（元荒川）
- 荒川上流接続線（現・荒川のうち和田下流→入間合流→隅田上流相当部）
- 忍川・星川（元荒川支流）
- 入間川・浅草/隅田川（参照・現在の川）
- **石田堤**（推定・黒破線）
- 武蔵水路（1960年代・シアン破線・参考）
- 見沼代用水（1728年・黄破線・参考）
- 【西遷前】入間川水系ルート（推定・茶破線）

### 重要地点
- 📍 忍城（忍城址公園）
- 📍 石田三成本陣（丸墓山古墳）

---

## 凡例

| 色・スタイル | 意味 |
|---|---|
| 青実線（太） | 利根川水系 Q1・12水系・Q2、会の川、青毛堀川等（新規） |
| 青実線（太） | 荒川上流（新規）|
| 青実線（太） | 旧利根川（古利根/大落）・元荒川・中川/綾瀬・忍川・星川（既存） |
| 青破線（細） | 忍川上流（熊谷中心部の「星川」区間） |
| 茶実線 | 下流口参照（浅草/隅田）・入間川・現荒川の該当区間 |
| 茶破線（細） | 【西遷前】入間川水系ルート（推定） |
| 黒破線 | 石田堤（推定） |
| シアン破線 | 武蔵水路（1960年代・参考） |
| 黄破線 | 見沼代用水（1728年・参考） |
| 📍 | 重要地点（忍城 / 丸墓山古墳） |

---

## 1590年の歴史的背景

### 利根川東遷以前の流路
1590年当時、**利根川は南下して東京湾（江戸湾）へ注いでいました**。
現在のように太平洋（銚子方面）へ向かう流路は、江戸幕府による大規模な治水工事（利根川東遷）の結果です。

当時の水系は複雑に入り組み、荒川・利根川・旧利根川が現在とは全く異なるルートで流れていました。
この地図では OSM の現存河道データを手がかりに、当時の推定流路を再現しています。

### 石田三成の忍城水攻め（1590年）
小田原征伐の一環として、豊臣秀吉の命を受けた石田三成が忍城（現・埼玉県行田市）を水攻めにしました。
石田三成は短期間で **石田堤** を築いて水没を試みましたが、忍城は落城せず「浮き城」として知られます。

この地図では石田堤の推定位置（黒破線）と、当時の水系を重ねて表示することで、
水攻めの地理的な条件を視覚的に理解できます。

### 荒川の流路変化
荒川も1590年当時は現在と異なる流路でした。
現在の荒川放水路は1930年完成の人工河川です。1590年当時の荒川は、元荒川の流路を通り利根川に合流しており、入間川水系とは完全に別水系でした。荒川が入間川に接続されたのは1629年（寛永6年）の荒川西遷によるものです。

---

## 技術仕様

- **フレームワーク**: [Leaflet.js](https://leafletjs.com/) v1.9.4
- **地図タイル**: OpenStreetMap / 国土地理院（標準地図・治水地形分類図・陰影起伏図）
- **河川データ**: OpenStreetMap Overpass API（wayデータを直接使用）
- **高速化**: `data/rivers_wide_overpass.json` が存在する場合はローカルキャッシュを優先使用

### 高速化について
`data/rivers_wide_overpass.json` が存在する場合、Overpass API への問い合わせをスキップして
ローカルファイルから読み込みます。読み込みが高速・安定します。

地図左下のステータスに「データ元: **ローカル**」と表示されれば高速化が有効です。
ファイルが無い場合は Overpass から取得するため、遅い・失敗しやすい場合があります。

---

## ファイル構成

```
ishida-tsutsumi-map/
├── index.html                      # 最新版（v20）
├── v18.html                        # v18 固定版（アーカイブ）
├── v4.html                         # 初期版（アーカイブ）
├── README.md                       # このファイル
├── CHANGELOG.md                    # 変更履歴詳細
├── data/
│   ├── rivers_wide_overpass.json   # 河川線データ（OSM/Overpass由来キャッシュ）
│   └── query_rivers_wide.overpass  # キャッシュ生成用クエリ
└── scripts/
    └── update_rivers_data.sh       # キャッシュ更新スクリプト
```

---

## 変更履歴

| バージョン | 日付 | 主な変更 |
|---|---|---|
| **v20** | 2026-03-01 | 水系ネットワーク方式に全面転換。利根川水系9河川・荒川上流を新規追加。越辺川・小畔川削除。凡例を全面書き直し（swatch付き）。ループ修正。 |
| v18 | 2026-02-28 | 旧利根川・旧荒川の上流接続線追加。星川×見沼代用水共用区間の二色表示実装。 |
| v4 | 2026-02-xx | 初期版。石田堤・元荒川・忍川・武蔵水路・見沼代用水の基本表示。 |

詳細は [CHANGELOG.md](./CHANGELOG.md) を参照してください。

---

## 河川データの更新

Overpass のスナップショットを更新したい場合:

```bash
bash scripts/update_rivers_data.sh
# data/rivers_wide_overpass.json が更新される
git add data/rivers_wide_overpass.json
git commit -m "data: update OSM river cache"
```

---

## クレジット / ライセンス

- **河川データ** (`data/rivers_wide_overpass.json`): OpenStreetMap 由来 © OpenStreetMap contributors（[ODbL](https://opendatacommons.org/licenses/odbl/)）
- **地図表示**: [Leaflet.js](https://leafletjs.com/)（BSD 2-Clause）
- **背景タイル**:
  - [OpenStreetMap](https://www.openstreetmap.org/) © OpenStreetMap contributors
  - [国土地理院](https://www.gsi.go.jp/)（標準地図・治水地形分類図・陰影起伏図）

---

# Ishida Tsutsumi Overlay Map (GitHub Pages)

Updated: 2026-03-01 (v20)

This repository publishes an interactive overlay map via GitHub Pages, visualizing the river network of the Kanto plain around 1590 — before the Tone River eastward diversion and Arakawa westward diversion projects of the early Edo period.

**Features**:
- 9 newly added Tone River tributaries (Q1, 12-ways network, Q2, Ainokawa, Aomogawa, etc.)
- Arakawa upper course (1590 route)
- Ishida Tsutsumi embankment (estimated, built by Mitsunari Ishida for the Oshi Castle water siege in 1590)
- Background: GSI hazard map tiles (flood plain classification)

**Performance**: If `./data/rivers_wide_overpass.json` exists, the map loads from local cache (fast). Otherwise falls back to Overpass API.

**Data**: `data/rivers_wide_overpass.json` is derived from OpenStreetMap: © OpenStreetMap contributors (ODbL).
