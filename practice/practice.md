统计出 /usr/share/dict/words中 不以 's结尾, 且a出现超过三次的.所有后两位元素的列表.
同时找出最后两位部位在全部排列中没有出现的结果?

解答:
1.加载所有的words
2.过滤出所有不以's结尾的words
3.统计出a出现三次以上的单词
4.取出最后两位的元素的列表
5.做一个去重
6.统计记录条数
cat /usr/share/dict/words |grep -v "'s$" |grep -E "([^a]*a){3}" | sed 's/.*(\w{2})/\1/g' |uniq |wc -l

第二个问题是找出所有没有出现的结果
1.将第一问的结果导出到一个临时文件中
2.生成所有的两个字母的组合到一个临时文件中
3.比较这两个文件中的差异

第一步适用一个脚本来实现:
#!/usr/bin/env bash

for i in {a..z};
do
	for j in {a..z};
	do
		echo $i$j >> allCom.txt
	done

done

第二步:适用条指令:
cat /usr/share/dict/words |grep -v "'s$" |grep -E "([^a]*a){3}" |sed  -E 's/.*(\w{2})/\1/g' |sort  -u > wordCom.txt
第三步:适用diff来进行比较
```
diff  --unchanged-group-format='' <(cat wordCom.txt) <(cat allCom.txt) |wc -l
