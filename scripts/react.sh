#!/usr/bin/env sh

npm init
npm i react
npm i react-dom
npm i browserlist
npm i node-sass
npm i stylelint-config-standard
npm i parcel-bundler
npm i eslint
npm i eslint-config-standard
npm i eslint-plugin-import
npm i eslint-plugin-node
npm i eslint-plugin-promise
npm i eslint-plugin-react
npm i eslint-plugin-standard

mkdir src public src/components src/components/App

cp -f ~/dotfiles/react/.react-eslintrc.json .eslintrc.json
cp -f ~/dotfiles/.stylelintrc.json .stylelintrc.json
cp ~/dotfiles/react/App.js src/components/App/App.js
# cp ~/dotfiles/react/react-index.js src/index.js
# cp ~/dotfiles/react/react-index.html public/index.html
# cp ~/dotfiles/react/react-index.scss src/index.scss

xclip -selection "primary" < ~/dotfiles/react/copy.this
