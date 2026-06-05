# FiberGate — Final Year Project Report (LaTeX)

LaTeX source for the PFE report *“Guichet OI: Optimization and Automation of the Fiber
Optic Connection Process”* (ENET'COM Sfax), built on the Enetcom PFE dissertation class.

## Repository layout

```
main.tex                              # master file — compile this
Enetcom-PFE-Report-dissertation.cls   # document class (styling)
.latexmkrc                            # build config (Overleaf + local latexmk)
chapter/                             # front matter + 6 chapters + back matter
  00-CoverPage.tex                   # cover page (jury names = placeholders to fill)
  01-Dedication.tex … 05-GeneralIntroduction.tex
  06-Chapter1.tex … 08c-Chapter6.tex
  09-GeneralConclusion.tex
  10-Bibliography.tex                # bibliography + webography
  11-Appendices.tex
images/                              # all figures (image1.png … image77.png) + logos
  Commands.tex                       # report metadata (title, authors, jury)
```

## How to build

### Option A — Overleaf (no install)
1. Download this repo as a ZIP (**Code → Download ZIP**) or push it and import the repo.
2. New Project → Upload Project → select the ZIP.
3. Menu → **Compiler: pdfLaTeX**, **TeX Live 2021+**.
4. Recompile (Overleaf reads `.latexmkrc` and runs enough passes automatically).

### Option B — VS Code (local)
**Dependencies to install once per machine:**

| Dependency | Windows | macOS | Linux |
|------------|---------|-------|-------|
| TeX distribution | [MiKTeX](https://miktex.org) or [TeX Live](https://tug.org/texlive/) | [MacTeX](https://tug.org/mactex/) | `sudo apt install texlive-full` |
| VS Code extension | **LaTeX Workshop** (`James-Yu.latex-workshop`) — VS Code will prompt to install it (see `.vscode/extensions.json`) | same | same |

> No Python, no `pygments`, no Inkscape, and no `-shell-escape` are required:
> `minted` and the `svg` package are intentionally disabled (all figures are PNG and
> code is typeset with `fancyvrb`). MiKTeX/TeX Live bundle `latexmk` and Perl already.

**Build:** open the folder in VS Code, open `main.tex`, then **Ctrl+Alt+B** (or click the
green ▶ in the LaTeX Workshop sidebar). The configured recipe runs `pdflatex` three times
so the Table of Contents, List of Figures, and List of Tables resolve. Output: `main.pdf`.

**Command line alternative:**
```bash
latexmk -pdf main.tex      # uses .latexmkrc, handles all passes
# or, without latexmk:
pdflatex main.tex && pdflatex main.tex && pdflatex main.tex
```

## Working across two PCs
`git pull` before you start, `git commit` + `git push` when you finish. Build artifacts
(`*.aux`, `*.toc`, `main.pdf`, …) are git-ignored, so only source is synced and there are
no merge conflicts on generated files.

## Things still to fill in
- Cover page jury names / defense date — in `images/Commands.tex` and `chapter/00-CoverPage.tex`.
- A few figures use auto captions (`imageNN`); refine captions where needed.
- The 10 code listings in Chapter 4 had their line breaks reconstructed heuristically — proofread them.
