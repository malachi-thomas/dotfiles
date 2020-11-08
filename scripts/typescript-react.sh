#!/usr/bin/env sh

rm package.json package-lock.json .prettierrc.json .stylelintrc.json tsconfig.json

npm init
npm i -D react
npm i -D react-dom
npm i -D prettier
npm i -D @types/react
npm i -D @types/react-dom
npm i -D @typescript-eslint/parser
npm i -D @typescript-eslint/eslint-plugin
npm i -D typescript
npm i -D react-scripts
npm i -D browserlist
npm i -D node-sass


cp -f ~/dotfiles/react-package.json package.json
cp -f ~/dotfiles/react-tsconfig.json tsconfig.json
cp -f ~/dotfiles/.prettierrc.json .prettierrc
cp -f ~/dotfiles/.stylelintrc.json .stylelintrc.json
