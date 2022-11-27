#!/usr/bin/env bash
#将sed指令封装到 shell脚本中,这样就可以直接使用shell.对于比较长的元素比较有优势

sed -n '1!G; h; $p' $1
