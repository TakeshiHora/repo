#!/bin/sh

tmp=/tmp/$$
echo "input 2 argments" > $tmp-args
echo "input natural number" > $tmp-nat
# 変数を使って表記を短く # 回答準備:引数の数
# 回答準備:数字じゃない
ERROR_EXIT () { echo "$1" >&2 rm -f $tmp-* exit 1
}
# テスト開始
# teat1: 引数の数が足りない
./same.sh 2> $tmp-ans && ERROR_EXIT "error in test1-1" diff $tmp-ans $tmp-args || ERROR_EXIT "error in test1-2"


