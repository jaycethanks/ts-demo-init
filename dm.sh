#!/bin/bash
mkdir dist src
touch ./dist/index.html ./dist/reset.css ./src/script.ts ./src/style.scss package.json tsconfig.json

echo '
{
  "include": [
    "src/**/*.ts",
    "index.d.ts",
    "index.d.ts"
  ],
  "compilerOptions": {
    "outDir": "./dist/",
    "target": "es2015",
    "module": "commonjs",
    "esModuleInterop": true,
    "forceConsistentCasingInFileNames": true,
    "strict": true,
    "strictNullChecks": false,
    "skipLibCheck": true
  }
}
' >tsconfig.json

echo '
{
  "name": "noname",
  "version": "1.0.0",
  "description": "demo",
  "main": "index.js",
  "scripts": {
    "watch": "npm run scss & npm run tsc",
    "tsc": "tsc --watch",
    "scss": "scss --watch --no-cache ./src/style.scss:./dist/style.css --sourcemap=none"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}
' >package.json

echo "
<!DOCTYPE html>
<html lang=\"en\">
  <head>
    <meta charset=\"UTF-8\" />
    <meta
      http-equiv=\"X-UA-Compatible\"
      content=\"IE=edge\"
    />
    <meta
      name=\"viewport\"
      content=\"width=device-width, initial-scale=1.0\"
    />
    <link rel=\"stylesheet\" href=\"style.css\" />
    <link rel=\"stylesheet\" href=\"reset.css\" />
    <title>$1</title>
  </head>
  <body>
    <div class=\"container\"></div>

    <script src=\"script.js\"></script>
  </body>
</html>" >./dist/index.html

echo "
body {
  height: 100vh;
  width: 100vw;
  display: flex;
  justify-content: center;
  align-items: center;
  .container {
    width: 400px;
    height: 200px;
    border: 1px solid;
  }
}

" >./src/style.scss

echo "
a,abbr,acronym,address,applet,article,aside,audio,b,big,blockquote,body,canvas,caption,center,cite,code,dd,del,details,dfn,div,dl,dt,em,embed,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hgroup,html,i,iframe,img,ins,kbd,label,legend,li,main,mark,menu,nav,object,ol,output,p,pre,q,ruby,s,samp,section,small,span,strike,strong,sub,summary,sup,table,tbody,td,tfoot,th,thead,time,tr,tt,u,ul,var,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline}article,aside,details,figcaption,figure,footer,header,hgroup,main,menu,nav,section{display:block}[hidden]{display:none}body{line-height:1}menu,ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:after,blockquote:before,q:after,q:before{content:'';content:none}table{border-collapse:collapse;border-spacing:0}
" >./dist/reset.css
