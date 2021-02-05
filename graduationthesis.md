# 2020gsc_YosukeKanda
# 神田洋輔の2020年度ゼミ論用レポジトリ


青山学院大学 地球社会共生学部 地球社会共生学科

神田 洋輔/Yosuke Kanda

学籍番号 1A118061

指導教員 古橋 大地 教授

© Furuhashi Laboratory/Yosuke Kanda, CC BY 4.0

# Title
# 「Blenderにおける3D都市モデル（CityGML・CityJSON）の活用検討」



# Introduction
本研究はCityGMLをCityJsonデータに変換してBlenderにインポートし、3D都市モデルをBlenderで使えるようにすること、またその過程で生じた現状の課題を整理したものである。
本研究は東京都の「[都市の3Dデジタルマップの実装に向けた産学官ワーキンググループ](https://www.metro.tokyo.lg.jp/tosei/hodohappyo/press/2020/12/02/01.html?fbclid=IwAR3-QD7h1PfpgQiEvRjgQy81s_sau1wuCHF6esaYg1R4WPRpnKeknvzTDdM)」の取り組みに関連するもので、これは東京都の基本計画における長期戦略の策定に向けた「[『未来の東京』戦略ビジョン](https://www.seisakukikaku.metro.tokyo.lg.jp/basic-plan/choki-plan/)」を推進する先導的事業である。
なお、当初のゼミ論として「Blender-OSMアドオンを用いて3D地形データを作成する手順をマニュアル化する」を設定していたが本研究はその前テーマからの移行となる。

# Methods

### 使用ソフト/ツール
CityGMLを直接blenderに読み込むことができなかったため公式の変換ツールである[Citygml-tools](https://github.com/citygml4j/citygml-tools/releases)をダウンロードして実行した。このツールを使用することでCityGMLとCityJSONの間で、またはその逆に自動的に変換可能になる。

モデリングソフト： blender バージョン 2.90.1f 　
CityJSONへの変換ツール: citygml-tools : V1.4.2    


# Result
LoD（Level of Detail）の5段階のうち[Cities converted from CityGML](https://www.cityjson.org/datasets/#datasets-converted-from-citygml)から引用したサンプルデータで表現できた範囲はLoD2の詳細さまでであった。このうち「Railway」のデータについてはLoD3の水準に近い品質でblender上に表示することができた。
<img width="427" alt="" src="">


# Discussion
この研究を通じてblenderにおけるCityGMLデータの導入が可能であることが判明したが、地形や建物だけでなくトンネル・橋・道路などの地物、信号や街灯、樹木などの様々な都市構成要素を表示できる程のLoD（Level of Detail）のデータを入手することが困難だった。また、blender側の設定等もCityJSONの表示に適したものにすることでより精度の高い３D都市モデルの表示ができると考える。
「LoD4のCityGMLがオープンデータとしての整備事例はほとんど見られなかった」（国土地理院資料より）の内容からblenderにおいてLoD4程の品質で３D都市モデルを表示することは困難な試みであると言えるかもしれない。




## 資料
[最終プレゼンテーションスライド（発表用資料）](https://docs.google.com/presentation/d/1GYH8xZmG5hdMV4ALacE_GjkqrAvXOtAq7JkklfuxvWw/edit#slide=id.gb424d91fe4_1_106)

[進捗管理用プロジェクト](https://github.com/furuhashilab/sotsuron2020/projects/12)  

## 参考文献リスト
https://docs.google.com/spreadsheets/d/1G2p2ijyUKfr2laqqZTIiqUpl5gTyZ4cM2XD_ILLaLGA/edit?usp=sharing

## 中間発表
### medium
[CityGMLとCityJSONについての理解 (12月16日)](https://tidacancan.medium.com/citygml%E3%81%A8cityjson%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6-%E3%82%A2%E3%83%89%E3%83%99%E3%83%B3%E3%83%88%E3%82%AB%E3%83%AC%E3%83%B3%E3%83%80%E3%83%BC12%E6%9C%8816%E6%97%A5-84cde663c429)



