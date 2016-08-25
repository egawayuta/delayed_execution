#!/bin/sh

#===============================================
#起動までどれだけ待機するか
time=5
#以下に起動するアプリケーションのフルパスを入れてください
fullPath="/Applications/Skitch.app"
#===============================================

for (( i = $time ; i > 0 ; i-- ))
do
	echo " 起動まであと $i 秒."
  sleep 1s
done

open $fullPath

if(($? == 1)); then
  echo
  echo "！エラー！"
  echo "アプリケーションのフルパスを確認してください"
  echo
else
  echo
  echo "起動完了しました."
  echo
fi
