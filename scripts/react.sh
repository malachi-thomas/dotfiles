#!/usr/bin/env sh

npm init
npm i -D react
npm i -D react-dom
npm i -D prettier
npm i -D react-scripts
npm i -D browserlist
npm i -D node-sass
npm i -D stylelint-config-standard
npm i -D stylelint-prettier

mkdir src public src/components src/components/App
touch src/styles.scss

cp -f ~/dotfiles/.prettierrc.json .prettierrc.json
cp -f ~/dotfiles/.stylelintrc.json .stylelintrc.json
cp ~/dotfiles/react/App.js src/components/App/App.js
cp ~/dotfiles/react/react-index.js src/index.js
cp ~/dotfiles/react/react-index.html public/index.html
cp ~/dotfiles/react/add.json add.json

xclip -selection "primary" < ~/dotfiles/react/add.json
