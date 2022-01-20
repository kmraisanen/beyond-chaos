# Beyond Chaos! - An Introduction to Anarchism

This is a Swedish translation of Dawn Ray'd's pamphlet on anarchism
as `.tex`, `.md`, and `.pdf` files.

## Building
### Creating PDF:
```bash
$ xelatex -interaction=nonstopmode bortom-kaos.tex
```

### Creating Markdown
```sh
$ pandoc -f latex bortom-kaos.tex -t commonmark -o bortom-kaos.md
```


