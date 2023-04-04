# ts-demo-init
写demo专用, 基于 scss + ts 的shell 脚本程序


## 使用 (linux)

```bash
touch ~/.bash_alias
echo 'alias dm="bash /home/jayce/Desktop/shell_scripts/dm.sh"' >> ~/.bash_alias
source ~/.bash_alias
```


```bash
mkdir demo;cd demo;
dm hello-friend #hello-friend 为生成的html模板的title,如果不填写,title为空
```
将会生成如下目录:

```bash
$ tree
.
├── dist
│   ├── index.html
│   └── reset.css
├── package.json
├── src
│   ├── script.ts
│   └── style.scss
└── tsconfig.json
```

开始愉快的玩耍吧!!

> package.json 中的脚本依赖 scss 和 typescript ,确保全局安装了哦
