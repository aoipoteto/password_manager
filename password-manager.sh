#!/bin/sh

#ステップ1
echo "パスワードマネージャーへようこそ！ "
echo "サービス名を入力してください : "
read service
echo "ユーザー名を入力してください : "
read name
echo "パスワードを入力してください : "
read password
echo "$service:$name:$password" >> password.txt
echo Thank you!
