#!/bin/bash
#ようこそ書く
echo "パスワードマネージャーへようこそ！"
while true; do
    echo "次の選択肢から入力してください(Add Password/Get Password/Exit):"
    read choice

    if [ "$choice" == "Add Password" ]; then
        #addPasswordが入力された場合
        echo "サービス名を入力してください："
        read service
        echo "ユーザー名を入力してください："
        read username
        echo "パスワードを入力してください："
        read password
        echo "$service:$username:$password" >> password.txt

   

    #getが入力された場合
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
        

        #保存されているサービス名、ユーザー名、パスワードの３つを表示する


    #Exitが入力された場合
    elif [ "$choice" == "Exit" ]; then
        echo "Thank you!"
        break


    #その他が入力された場合 
    else
        echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
    fi
   
done
