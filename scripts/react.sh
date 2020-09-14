#!/usr/bin/env sh

rm package.json package-lock.json .prettierrc.json .stylelintrc.json tsconfig.json

npm init
npm i -D react
npm i -D react-dom
npm i -D @types/react
npm i -D @types/react-dom
npm i -D eslint@6.6.0
npm i -D eslint-plugin-node
npm i -D eslint-plugin-react
npm i -D eslint-config-standard
npm i -D eslint-plugin-import
npm i -D eslint-plugin-standard
npm i -D eslint-plugin-promise
npm i -D @typescript-eslint/parser
npm i -D @typescript-eslint/eslint-plugin
npm i -D typescript
npm i -D babel
npm i -D react-scripts
npm i -D browserlist
npm i -D node-sass


cp -f ~/dotfiles/react-package.json package.json
cp -f ~/dotfiles/react-tsconfig.json tsconfig.json
cp -f ~/dotfiles/.react-eslintrc.json .eslintrc.json
cp -f ~/dotfiles/.prettierrc.json .prettierrc
cp -f ~/dotfiles/.stylelintrc.json .stylelintrc.json
