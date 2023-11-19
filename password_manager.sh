#!/bin/bash
#ようこそ書く
echo "パスワードマネージャーへようこそ！"
echo "次の選択肢から入力してください(Add Password/Get Password/Exit):"
read choice
#選択肢を選ぶif使う
if [ "$choice" == "Add Password" ]; then
    #addPasswordが入力された場合
    echo "サービス名を入力してください："
    read service
    echo "ユーザー名を入力してください："
    read username
    echo "パスワードを入力してください："
    read password
    echo "$service:$username:$password" >> password.txt

#選択肢を選ぶとこに戻る

#getが入力された場合
elif [ "$choice" == "Get Password" ]; then
    echo "サービス名を入力してください"
    ##サービスめが保存されていなかった場合
    echo "そのサービスは登録されていません。"
    ##サービスが保存されていた場合
    #保存されているサービス名、ユーザー名、パスワードの３つを表示する

##選択肢を選ぶとこに戻る

#Exitが入力された場合
elif [ "$choice" == "Exit" ]; then
    echo "Thank you!"

#プログラムが終了


#その他が入力された場合 
else
    echo "入力が間違えています。(Add Password/GetPassword/Exit) :"
fi
#選択肢を選ぶとこに戻る
