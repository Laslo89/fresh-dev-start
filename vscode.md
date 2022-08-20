# VS Code Settings / Plugins / Theme

## Font

- [Fira Code](https://fonts.google.com/specimen/Fira+Code) and I use fontligatures

## Theme

I like my theme and color layout more minimalistic. Too much colors are a distraction for me. That is why I use the GitHub Theme (GitHub.github-vscode-theme). The color layout is **"GitHub Dark Default"**.

## Extensions

- [Atom Keymap](https://marketplace.visualstudio.com/items?itemName=ms-vscode.atom-keybindings)

  - Atom keyboard shortcuts for Visual Studio Code.

- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

  - Adds nice looking items to files.

- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)

  - Static code analyzer.

- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)

  - Opinionated code formatter.

- [Parameter Hints](https://marketplace.visualstudio.com/items?itemName=DominicVonk.parameter-hints)

  - Automatic parameter hints.

- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)

  - Git Features

- [Markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

  - Markdown linting and style checking

- [Sass](https://marketplace.visualstudio.com/items?itemName=Syler.sass-indented)

  - Syntaxhighlighting and formatter

- [Stylelint](https://marketplace.visualstudio.com/items?itemName=stylelint.vscode-stylelint)

  - scss linter

- [Volar](https://marketplace.visualstudio.com/items?itemName=vue.volar)

  - Vue Language Features.

## Settings

### User Settings

```json
{
  "workbench.colorTheme": "GitHub Dark Default",
  "editor.linkedEditing": true,
  "editor.fontFamily": "Fira Code",
  "editor.fontLigatures": true,
  "editor.fontSize": 14,
  "editor.tabSize": 2,
  "editor.insertSpaces": true,
  "atomKeymap.promptV3Features": true,
  "files.trimTrailingWhitespace": true,
  "files.eol": "\n",
  "files.insertFinalNewline": true,
  "files.trimFinalNewlines": true,
  "eslint.alwaysShowStatus": true,
  "typescript.disableAutomaticTypeAcquisition": true,
  "javascript.format.enable": false,
  "typescript.format.enable": false,
  "typescript.validate.enable": false,
  "javascript.validate.enable": false,
}
```

### Workspace

```json
{
  "search.exclude": {
    "**/node_modules": true,
    "**/bower_components": true,
    "**/*.code-search": true
  },
  "workbench.startupEditor": "newUntitledFile",
  "workbench.colorTheme": "GitHub Dark Default",
  "editor.linkedEditing": true,
  "editor.fontFamily": "Fira Code",
  "editor.fontLigatures": true,
  "editor.fontSize": 14,
  "editor.tabSize": 2,
  "editor.insertSpaces": true,
  "files.trimTrailingWhitespace": true,
  "files.eol": "\n",
  "files.insertFinalNewline": true,
  "files.trimFinalNewlines": true,
  "typescript.disableAutomaticTypeAcquisition": true,
  "javascript.format.enable": false,
  "typescript.format.enable": false,
  "typescript.validate.enable": false,
  "javascript.validate.enable": false,
  "atomKeymap.promptV3Features": true,

  "eslint.enable": true,
  "eslint.alwaysShowStatus": true,
  "eslint.validate": ["vue", "react", "typescript", "html", "javascript"],
  "extensions.ignoreRecommendations": true,
  "diffEditor.ignoreTrimWhitespace": false,
  "editor.suggestSelection": "first",
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[html]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[css]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[vue]": {
    "editor.defaultFormatter": "Vue.volar"
  },
  "[typescriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[scss]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[jsonc]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
}

```
