# 石田堤（忍城水攻め）＋1590年前後の旧河道オーバーレイ

更新日: 2026-02-28

公開URL:
- https://odakin.github.io/ishida-tsutsumi-map/

このリポジトリは GitHub Pages 上で配信される 1枚の HTML（Leaflet）地図です。
目的は「1590年前後（利根川東遷・荒川西遷の大改修前）に“本流筋/主要な流れ筋”として語られる残存河道」と、
忍城水攻めに関連する「石田堤（推定）」を、同一画面で作業用に可視化することです。

注意:
- 本地図は“復元図”ではなく、現存河道・地形タイル・推定線を重ねた可視化です（推定を含みます）。

## ファイル構成
- index.html : 最新版（現在 v18）
- v18.html : v18 固定版
- v4.html : 初期版（旧）
- data/rivers_wide_overpass.json : 河川線データのキャッシュ（OSM/Overpass由来）
- data/query_rivers_wide.overpass : キャッシュ生成用クエリ
- scripts/update_rivers_data.sh : キャッシュ更新スクリプト
- CHANGELOG.md : v4→v18 の差分

## 高速化（重要）
index.html は ./data/rivers_wide_overpass.json が存在する場合、これを優先的に読み込みます。
これにより Overpass への問い合わせを回避でき、読み込みが高速・安定します。
（ファイルが無い場合は Overpass から取得するため、遅い/失敗しやすいです）

地図の左下のステータスに「データ元: ローカル」と出れば高速化が効いています。

## 操作
- 右上: レイヤ ON/OFF
- 左上: 治水地形分類図の透過度、再読み込み、表示範囲リセット、石田堤付近へジャンプ

## レイヤの意味（v18の要約）
- 太い線（青）: 1590年前後に主要筋として語られる残存河道（古利根川・大落古利根川／元荒川／中川・綾瀬川 等）
- 下流口参照（茶）: 浅草川/隅田川筋（「東京湾への出口側」の目安）
- （参照）現荒川の該当区間（茶）: 和田吉野川（最下流側）→入間川合流→隅田川最上流（岩淵付近）までを“つなぎの目安”として表示。岩淵以南（放水路〜河口）は1590表示では描かない。
- 茶の破線: 【西遷前】入間川水系ルート（推定）（和田→市野→入間→隅田川筋）。秩父付近の上流山地は混同しやすいので平野部のみ表示。
- 黒の破線: 石田堤（推定）
- シアン破線: 武蔵水路（1960年代・参考）
- 黄破線: 見沼代用水（1728年・参考）
- 星川×見沼代用水の共用区間: 星川のみON→星川色／見沼のみON→見沼色／両方ON→二色で表示
- 背景: 治水地形分類図（更新版）・陰影起伏図

## 河川データの更新
Overpass のスナップショットを更新したい場合:
- scripts/update_rivers_data.sh を実行し、data/rivers_wide_overpass.json を更新してコミットしてください。

## クレジット / ライセンス
- 河川線データ（data/rivers_wide_overpass.json）は OpenStreetMap 由来です: © OpenStreetMap contributors（ODbL）
- 地図表示は Leaflet を使用しています。
- 背景タイル: OpenStreetMap / 国土地理院タイル（治水地形分類図・陰影起伏図）等を利用しています。


# Ishida Tsutsumi overlay map (GitHub Pages)

Updated: 2026-02-28

This repo publishes an interactive overlay map (single HTML) via GitHub Pages.

Performance:
- If ./data/rivers_wide_overpass.json exists, the map loads it first (fast, stable).
- Otherwise it falls back to Overpass (slow, sometimes unstable).

Data:
- data/rivers_wide_overpass.json is derived from OpenStreetMap: © OpenStreetMap contributors (ODbL).
