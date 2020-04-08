<p align="center">
  <a href="http://codely.tv">
    <img src="http://codely.tv/wp-content/uploads/2016/05/cropped-logo-codelyTV.png" width="192px" height="192px"/>
  </a>
</p>

<h1 align="center">
  🕊 No Branches
</h1>

<p align="center">
    <a href="https://github.com/CodelyTV"><img src="https://img.shields.io/badge/CodelyTV-OS-green.svg?style=flat-square" alt="codely.tv"/></a>
    <a href="http://pro.codely.tv"><img src="https://img.shields.io/badge/CodelyTV-PRO-black.svg?style=flat-square" alt="CodelyTV Courses"/></a>
    <a href="https://github.com/marketplace/actions/no-branches"><img src="https://img.shields.io/github/v/release/CodelyTV/no-branches?style=flat-square" alt="GitHub Action version"></a>
</p>

<p align="center">
    Useful if you do <code>trunk-based development</code> or <code>master-only git flow</code>
</pre>

## 🚀 Usage

Create a file named `remove-branch.yml` inside the `.github/workflows` directory and paste:

```yml
name: Remove branch

on:
  create

jobs:
  remove-branch:
    runs-on: ubuntu-latest
    steps:
      - uses: codelytv/no-branches@v1
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

## ⚖️ License

[MIT](LICENSE)
