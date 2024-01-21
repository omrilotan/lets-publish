#!/usr/bin/env bash

# Check if NPM is installed]
if ! [ -x "$(command -v npm)" ]; then
	echo "NPM is not installed"
	exit 1
fi

# Check if jq is installed
if ! [ -x "$(command -v jq)" ]; then
	echo "jq is not installed"
	exit 1
fi

NAME=$(jq -r '.name' package.json)
VERSION=$(jq -r '.version' package.json)

if [ -z "$VERSION" ]; then
	echo "No version found in package.json"
	exit 1
fi

if npm view $NAME@$VERSION > /dev/null 2>&1; then
	echo "Version $NAME@$VERSION already published on npm"
else
	echo "Publish $NAME@$VERSION on npm"
	npm publish $@
fi
