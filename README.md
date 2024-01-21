# publish [![](https://img.shields.io/npm/v/@lets/publish.svg)](https://www.npmjs.com/package/@lets/publish) [![](https://img.shields.io/badge/source--000000.svg?logo=github&style=social)](https://github.com/omrilotan/mono/tree/master/packages/publish)

## 🛵 Publish only if this version was not already published

Check with NPM registry if this version was already published. If not, publish it.

```sh
npx @lets/publish@0
```

Passes on all arguments to `npm publish`

```sh
npx @lets/publish -- --tag next
```

> Depends on `npm` to check the registry and `jq` to check the local package.json
