#!/bin/bash

for ITEM_PATH in "$@"; do
	# ディレクトリのパスとアイテム（ファイルまたはフォルダ）の名前を取得
	DIR_PATH=$(dirname "$ITEM_PATH")
	ITEM_NAME=$(basename "$ITEM_PATH")

	# アイテム名（拡張子を除く）と拡張子を分けて取得（ファイルの場合のみ）
	BASE_NAME="${ITEM_NAME%.*}"
	EXTENSION="${ITEM_NAME##*.}"

	# ランダムなパスワードを生成
	PASSWORD=$(openssl rand -base64 10)

	# 対象のディレクトリに移動
	cd "$DIR_PATH"

	# ZIPファイルを暗号化し、元のディレクトリに保存
	if [ -d "$ITEM_PATH" ]; then
		# アイテムがディレクトリの場合
		zip -e -P "$PASSWORD" -r "${ITEM_NAME}.zip" "$ITEM_NAME"
	else
		# アイテムがファイルの場合
		zip -e -P "$PASSWORD" "${BASE_NAME}.zip" "$ITEM_NAME"
	fi

	# 元のディレクトリに戻る
	cd -

	# パスワードとアイテム名をポップアップウィンドウで表示
	osascript -e 'tell app "System Events" to display dialog "アイテム「'"$ITEM_NAME"'」のパスワード: '"$PASSWORD"'"'
done
