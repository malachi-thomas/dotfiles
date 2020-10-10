#!/usr/bin/env sh


npm init
npm i eslint
npm i eslint-config-standard
npm i eslint-plugin-import
npm i eslint-plugin-node
npm i eslint-plugin-promise
npm i eslint-plugin-standard
# npm i prettier
cp -f ~/dotfiles/.eslintrc.json .
# cp -f ~/dotfiles/.prettierrc.json .

echo "get codeing all installed"
