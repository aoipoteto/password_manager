#!/bin/bash
echo "パスワードマネージャーへようこそ!"
while true; do
    echo "次の選択肢から入力してください(Add Password/Get Password/Exit):"
    read choice

    if [ "$choice" == "Add Password" ]; then
        echo "サービス名を入力してください："
        read service
        echo "ユーザー名を入力してください："
        read username
        echo "パスワードを入力してください："
        read password
        echo "$service:$username:$password" >> password.txt

    elif [ "$choice" == "Get Password" ]; then
        echo "サービス名を入力してください"
        read research_service

        registered=false
        while IFS=':' read -r service username password; do
            if [ "$research_service" == "$service" ]; then
                echo "サービス名:$service"
                echo "ユーザー名:$username"
                echo "パスワード:$password"
                registered=true
                break
            fi
        done < password.txt
       
        if [ "$registered" == false ]; then
            echo "そのサービスは登録されていません。"
        fi

    elif [ "$choice" == "Exit" ]; then
        echo "Thank you!"
        break

    else
        echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
    fi
done
