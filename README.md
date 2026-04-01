# UCR Thesis & Dissertation LaTeX Template

An **unofficial** LaTeX template for University of California, Riverside (UCR) PhD dissertations and master's theses, implementing the [Graduate Division format requirements](https://graduate.ucr.edu/dissertation-and-thesis-submission) (2025/2026).

> **Note:** This is a community template, not officially maintained by UCR Graduate Division. Always verify formatting against the [official format guide](https://graduate.ucr.edu/filing-resources).

## Features

- Custom `ucr-thesis.cls` class implementing all UCR format requirements
- Correct margins (1.5" top/left, 1" bottom/right)
- Three-section pagination (preliminary Roman, body Arabic)
- Title page, copyright page, signature approval page templates
- Abstract environment with proper heading format
- Double-spaced body text with single-spaced captions, footnotes, and bibliography
- 12pt Times New Roman
- Landscape page support with portrait-style page numbers
- Sample chapter structure

## Open in Overleaf

[![Open in Overleaf](https://img.shields.io/badge/Open%20in-Overleaf-47A141?logo=overleaf&logoColor=white)](https://www.overleaf.com/docs?snip_uri=https://github.com/Larry-of-cosmotim/ucr-thesis-template/archive/refs/heads/main.zip)

Click the badge above to import this template directly into your Overleaf account — no download needed.

## Quick Start

### Option 1: Overleaf (recommended)
Click the "Open in Overleaf" badge above.

### Option 2: Local
1. Clone this repository:
   ```bash
   git clone https://github.com/Larry-of-cosmotim/ucr-thesis-template.git
   cd ucr-thesis-template
   ```

2. Edit `main.tex` with your information (title, name, committee, etc.)

3. Write your chapters in `chapters/`

4. Compile:
   ```bash
   pdflatex main.tex
   bibtex main
   pdflatex main.tex
   pdflatex main.tex
   ```

## File Structure

```
ucr-thesis-template/
├── main.tex                 # Master document — start here
├── ucr-thesis.cls           # UCR format class (do not modify unless needed)
├── references.bib           # Your bibliography
├── chapters/
│   ├── chapter1.tex         # Sample chapter
│   └── ...
├── figures/                 # Your figures
├── appendices/
│   └── appendix-a.tex      # Sample appendix
└── frontmatter/
    ├── acknowledgments.tex
    └── abstract.tex
```

## UCR Format Requirements Summary

Based on the UCR Graduate Division Dissertation and Thesis Format Guide (2025/2026):

| Requirement | Specification |
|---|---|
| **Font** | 10, 11, or 12pt (consistent throughout) |
| **Typeface** | Same throughout; no script/italics as main face |
| **Margins** | 1.5" top and left; 1" bottom and right |
| **Spacing** | Double-spaced body; single-spaced captions, footnotes, long quotes, bibliography entries |
| **Title page** | Counted as p. i, **not printed** |
| **Copyright page** | Counted as p. ii, **not printed** |
| **Approval page** | Counted as p. iii, **not printed** (blank in PDF) |
| **Acknowledgments** | First printed page (p. iv), Roman numerals |
| **Abstract** | ≤350 words (PhD required, master's optional) |
| **Body pagination** | Arabic numerals starting at page 1 |
| **Page numbers** | Centered at bottom, no periods/dashes/parentheses |
| **Figures/Tables** | Same margins as text; numbered continuously or by chapter |
| **Landscape pages** | Top = binding edge (left); page number stays portrait-style |
| **Widows/Orphans** | ≥2 lines at top and bottom of each page |
| **Bibliography** | Single-spaced entries with blank line between |
| **Submission** | Single PDF via ProQuest ETD |

### Preliminary Pages (in order)

1. Title page *(required)*
2. Copyright page *(recommended)*
3. Signature Approval page *(required, blank in PDF)*
4. Acknowledgments *(optional but recommended)*
5. Dedication *(optional)*
6. Abstract *(required for PhD)*
7. Table of Contents *(required)*
8. List of Figures *(required if >1 figure)*
9. List of Tables *(required if >1 table)*

### Title Page Rules

- No bold or stylized text (italics allowed for Latin nomenclature only)
- Capitalize first, last, and all principal words (≥4 letters)
- Do not capitalize articles, short prepositions, or short conjunctions (<4 letters)
- Use word substitutes for formulas, symbols, Greek letters
- Degree name must match official record
- Date = conferral month/year (December, March, June, or September)

## Customization

### Switching to Master's Thesis

In `main.tex`, change:
```latex
\degreename{Master of Science}  % or Master of Arts, etc.
```

The class will automatically use "Thesis" terminology.

### Adding Committee Members

```latex
\committeechairperson{Dr. Jane Doe}
\committeemembertwo{Dr. John Smith}
\committeememberthree{Dr. Alice Brown}
\committeememberfour{Dr. Bob Wilson}     % optional 4th member
\committeememberfive{Dr. Carol Davis}    % optional 5th member
```

### Figure Numbering

By default, figures are numbered continuously (1, 2, 3...). To number by chapter (1.1, 1.2, 2.1...), add to your preamble:
```latex
\usepackage{chngcntr}
\counterwithin{figure}{chapter}
\counterwithin{table}{chapter}
```

## Contributing

Found a formatting issue? Please open an issue or submit a pull request. Contributions welcome!

## License

MIT License — free to use, modify, and distribute.

## Acknowledgments

Format requirements based on the UCR Graduate Division Dissertation and Thesis Format Guide (2025/2026). Sample pages adapted from UCR Graduate Academic Affairs templates.
