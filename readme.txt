评价是：我是纱布。整个流程最麻烦的一步是怎么从 appid 得到 subid，这里
通过 steamdb 完成，同时定位到已拥有的 license 是哪一个。


Usage
============

1. 打开 https://steamdb.info/calculator/<steamid>/?cc=cn&all_games ，
   按需要排序，找到整页都是不要的游戏
2. 右键检查，复制包含表格的 html（如 <body>），粘贴到 vim 里，可以多找
   一两页粘贴到一起
3. vim 执行 ':so appid.vim' 得到指向 subs 的链接，手动复制到 url.txt 里
4. 终端运行 './run.sh url.txt'，在 chrome 打开所有链接。借助 steamdb 的
   插件，已拥有的 subid 应该是绿色高亮的
5. 用 SingleFile 插件一键保存所有 html，把 html 移动到 html/ 目录下
6. 终端运行 'vim html/*.html -c "argdo so subid.vim"'，提取 subid 到
   subid.txt，然后可以 ':qa!' 把 html 关了
7. vim 执行 ':%s/$\n/,/' 把 subid 合并到一行
8. 用 ASFEnhanced 的 rl 命令：rl <一整行 subid>，如 rl 100,200,300,...


Notice
============

a. 第 4 步可能被 steamdb ban，这时换个 ip 即可（vpn），请勿滥用！
b. 第 4 步避免同时打开太多页面占用性能，自己 Ctrl-C 控制或者 run.sh 加
   参数，详见 run.sh
c. 第 6 步提取 subid 依赖页面上的绿色高亮，必须安装 steamdb 插件
d. 第 6 步可能报错/写入失败，注意 i. subid.txt 必须存在 ii. subid.txt
   的交换文件不能存在，所以最好把打开过 subid.txt 的 vim 都退出了
e. 运行 run.sh 需要 bash 环境，可以用 git-bash.exe


Links
============
    SteamDB : https://chrome.google.com/webstore/detail/kdbmhfkmnlmbkgbabkdealhhbfhlmmon
 SingleFile : https://chrome.google.com/webstore/detail/mpiodijhokgodhhofbcjdecpffjipkle
ASFEnhanced : https://github.com/chr233/ASFEnhance
