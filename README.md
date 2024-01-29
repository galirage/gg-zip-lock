# Zip Lock

パスワード付きのZipファイルを作成するためのデスクトップアプリ（macOS）です。

- 対応OS：macOS
- 入力可能データ：ファイル、フォルダ

## 使用方法
1. zip_lock.zipを解凍して、アプリを起動する（同じディレクトリの中の`zip_lock.app`をダブルクリックする）。
![](./img/how_to_use_1.png)

※ もしもセキュリティで拒否されてしまった場合は、「システム設定 > プライバシーとセキュリティ > このまま開く」をクリックして、許可をします。
![](./img/how_to_use_1_2.png)

2. ファイル（もしくはフォルダ）を選択する。
![](./img/how_to_use_2.png)

3. パスワードが表示されるため、コピーする。
![](./img/how_to_use_3.png)

4. 元ファイルと同じディレクトリに、パスワード付きのZipファイルが作成されていることを確認する。
![](./img/how_to_use_4.png)

5. パスワードで解凍できることを確認する。

## 開発者向けメモ
AutomatorというmacOSのアプリで開発をしています。

現在の設定は以下の通りです。

![](./img/dev_1.png)

また、Automatorのアプリを開き、以下のように「zip_lock.app」を選択して、「開く」を選択することで、アップデートをかけられます。

![](./img/dev_2.png)