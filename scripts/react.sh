#!/usr/bin/env sh

npm init
npm i -D react
npm i -D react-dom
npm i -D @types/react
npm i -D @types/react-dom
npm i -D prettier
npm i -D typescript
npm i -D babel
npm i -D react-scripts
npm i -D browserlist
npm i -D node-sass
cp -f ~/dotfiles/react-package.json package.json
cp -f ~/dotfiles/react-tsconfig.json tsconfig.json
cp -f ~/dotfiles/.prettierrc.json .prettierrc
cp -f ~/dotfiles/.stylelintrc.json .stylelintrc.json

