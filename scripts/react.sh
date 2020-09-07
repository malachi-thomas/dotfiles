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
cp ~/dotfiles/.prettierrc.json .prettierrc.json
ln -f ~/dotfiles/.prettierrc.json .prettierrc.json
cp -f ~/dotfiles/package.json package.json
ln -f ~/dotfiles/package.json package.json
cp -f ~/dotfiles/tsconfig.json tsconfig.json
ln -f ~/dotfiles/tsconfig.json tsconfig.json

