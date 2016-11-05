# Skippo

## 製品概要

### はじめに

我々は3つのプロダクトで１つのサービスを作り上げました。QRコードを読み取って注文を確認するアプリとユーザがメニューを注文することができるアプリ、そして店舗が注文状況やメニューを管理する管理画面を作成しました。

### ブランチの説明

masterブランチ　→　READMEを記述

imagesブランチ　→　READMEの画像保存場所

[mobileブランチ](https://github.com/jphacks/KS_1606/tree/mobile)　→　注文するアプリ　

[iPadAppブランチ](https://github.com/jphacks/KS_1606/tree/iPadApp) →　QR読み取りアプリ

[serverブランチ](https://github.com/jphacks/KS_1606/tree/server)　→　管理画面(Web)


### Skippoイメージ

### 管理画面

###### ダッシュボード
![管理画面1](https://github.com/jphacks/KS_1606/blob/images/images/skippo-dashboard.png?raw=true)

###### 店舗情報入力
![管理画面2](https://github.com/jphacks/KS_1606/blob/images/images/skippo-information.png?raw=true)

###### メニュー管理
![管理画面3](https://github.com/jphacks/KS_1606/blob/images/images/skippo-menu.png?raw=true)

### 注文画面

###### 1. 店舗選択
<img src="https://github.com/jphacks/KS_1606/blob/images/images/SELECT.PNG?raw=true" width="230">

###### 2. 食べ物を選択
<img src="https://github.com/jphacks/KS_1606/blob/images/images/FOOD.PNG?raw=true" width="230">

###### 3. 飲み物を選択
<img src="https://github.com/jphacks/KS_1606/blob/images/images/DRINK.PNG?raw=true" width="230">

###### 4. サイドメニューを選択
<img src="https://github.com/jphacks/KS_1606/blob/images/images/SIDEMENU.PNG?raw=true" width="230">

###### 5. QR発行
<img src="https://github.com/jphacks/KS_1606/blob/images/images/QR.PNG?raw=true" width="230">

###### 6. LINE共有
<img src="https://github.com/jphacks/KS_1606/blob/images/images/LINE.PNG?raw=true" width="230">

### QR読み取りアプリ
###### 1. QR読み取り画面
<img src="https://github.com/jphacks/KS_1606/blob/images/images/iPad-qr.PNG?raw=true" width="320">

###### 2. 読み取り結果
<img src="https://github.com/jphacks/KS_1606/blob/images/images/iPadmenu.PNG?raw=true" width="320">

### X Tech

TimeTech（Techで時間の効率化を図る）

### 背景（製品開発のきっかけ、課題等）
ファストフード店やドライブスルーに行ったとき、早く注文したいのに並ばないといけないときってありますよね。

我々は注文で並ばないといけないのは、”*注文を店頭に行ってから考えて店員に伝える* ”という時間が待ち時間を生んでいるのではないだろうかという仮説を立てました。

### 製品説明（具体的な製品の説明）

我々のプロダクトは、前もってアプリ内で注文してそのデータを含んだQRコードを生成し、店舗側は”ピッ”と読み込むだけで注文が完了するシステムを作ります。我々は注文の効率化を目指します。

### 特徴
1. 店頭での注文を3秒でできます。

2. 優柔不断な人でもじっくりと選ぶことができます。

3. 店頭側の人件費、新規客獲得への期待

### 今後の展望

初期段階は、ある程度ユーザが担保されてないと店側の導入が難しい点にある。

そのため、最初は無料お試しキャンペーンなどで１ヶ月など導入していただき、導入の敷居を下げることで導入店舗数の拡大と同時に広告によるユーザの確保を行っていく。

ユーザ数と導入店舗数が一定数、増えれば注文のインフラを構築するイノベーションだと言っても過言ではない！

広め方としては局所的に福岡でローカルに広めて九州→全国みたいにスケールできたらよいと考えています！

### 注力したこと（こだわり等）

* 店舗側はWebで自由自在にメニューや店舗情報を設定できて、アプリからの売り上げや訪問数などを確認できる

* ユーザ側はとにかくわかりやすく、速く

* 双方にメリットのあるアイディア性

## 開発技術
### 活用した外部技術
#### API・データ
* サンプルデータとしてマクドナルド店舗情報を使用
* APIは使用していない

#### フレームワーク・ライブラリ・モジュール
* 管理画面　→　Ruby on Rails
* iOS　→　PageMenu,CoreImageなど

#### デバイス
* 管理画面　→　Web
* ユーザ側 →　iOS,iPad
* QRコード読み取りアプリ →　iPad

### 独自技術
#### 期間中に開発した独自機能・技術
* すべて独自の技術です。
