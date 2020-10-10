#!/usr/bin/env sh

npm init
npm i react
npm i react-dom
npm i browserlist
npm i parcel-bundler
npm i eslint
npm i eslint-config-standard
npm i eslint-plugin-import
npm i eslint-plugin-node
npm i eslint-plugin-promise
npm i eslint-plugin-react
npm i eslint-plugin-standard
# npm i prettier

mkdir src public src/components src/components/App

cp -f ~/dotfiles/react/.react-eslintrc.json .eslintrc.json
cp ~/dotfiles/react/react-index.html ./public/index.html
# cp -f ~/dotfiles/.prettierrc.json .prettierrc.json

xclip -selection "primary" < ~/dotfiles/react/copy.this
