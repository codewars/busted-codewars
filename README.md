# busted-codewars

Codewars output handler for [Busted](https://github.com/lunarmodules/busted).

## Install

```bash
luarocks install busted-codewars
```

## Usage

```bash
busted -o codewars
```

## Develop

Add example tests in `spec/` with a file name matching `*_spec.lua`.
Then run the tests with Codewars output:

```bash
luarocks test -- -o codewars
```
