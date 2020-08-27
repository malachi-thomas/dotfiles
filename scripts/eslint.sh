#!/usr/bin/env bash

npm init
npm i -D eslint
npm i -D typescript
ln -f ~/dotfiles/.eslintrc.json .eslintrc.json
ln -f ~/dotfiles/tsconfig.json tsconfig.json
