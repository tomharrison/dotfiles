#!/usr/bin/env bash

echo "\nUsing node.js:"
which node
node -v

npm i -g eslint babel-eslint eslint-plugin-react `# Linting dependencies` \
	typescript typescript-language-server `# Neovim LSP dependencies`
