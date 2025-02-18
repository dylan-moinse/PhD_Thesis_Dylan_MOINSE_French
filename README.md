# Improved Gustave Eiffel University (French) PhD Thesis Template - *LaTeX*

This *GitHub* repository contains the *LaTeX* source files for my submitted PhD thesis (*Version 1*).

## Repository Structure
The repository is organized as follows:

* `main.tex` :arrow_right: The main *LaTeX* file that compiles the full thesis.

### Style and Formatting Files
* `JMR.sty`, `main-local.sty`, `UGE/UGE-Thesis.sty`, and `UGE/UGE-Template.sty` :arrow_right: *LaTeX* style files and document structuring settings.
* `UGE/UGE-Bib.sty`, `UGE/UGE-Col.sty`, and `UGE-Fontes.sty` :arrow_right: Custom *LaTeX* styles for bibliography, colors, and fonts.

### Bibliography
* `DM.bib` :arrow_right: The bibliography file containing all references.

### Thesis Content
* `body.tex` :arrow_right: The main structure of the thesis body.
* `src/Corps` :arrow_right: Contains all primary content, including parts, chapters, appendices, and additional sections.
* `src/Figures` :arrow_right: Stores figures, diagrams, and maps, organized per chapter.
* `src/Tableaux` :arrow_right: Contains tables, organized per chapter.

## Compilation Instructions
To compile the manuscript, choose one of the following methods:

### Local compilation with `latexmk` and *LuaLaTeX*

If using a local *LaTeX* editor, run the following command:

```sh
latexmk -pvc -quiet main.tex
```

After five compilation iterations, the final PDF version of the thesis will be generated.

### Using Compilation with *Overleaf*

You can also use *Overleaf* to compile the thesis. However, due to the large size of the document, full compilation may exceed Overleaf's timeout limits.
To compile specific sections separately, uncomment the relevant line(s) in `main.tex`:

```sh
% Separated compilation .tex

%\includeonly{src/Corps/0-Introduction-generale}
%\includeonly{src/Corps/Chap-1-Cadre-theorique}
%\includeonly{src/Corps/Chap-2-Revue-systematique}
%\includeonly{src/Corps/Chap-3-Methodologie}
%\includeonly{src/Corps/Chap-4-Profil-voyageurs}
%\includeonly{src/Corps/Chap-5-Distances-detours}
%\includeonly{src/Corps/Chap-6-Modelisation-NPART}
%\includeonly{src/Corps/0-Conclusion-generale}
%\includeonly{src/Corps/0-Annexes}
```
This allows you to compile only a selected chapter instead of the entire thesis.

## Dependencies
Ensure that the following *LaTeX* packages are installed and updated:
`adjustbox`,
`afterpage`,
`amsmath`,
`amssymb`,
`arydshln`,
`atbegshi`,
`biblatex`,
`booktabs`,
`boxedminipage`,
`caption`,
`chngcntr`,
`colortbl`,
`csquotes`,
`draftwatermark`,
`enumitem`,
`eso-pic`,
`etoc`,
`etoolbox`,
`eurosym`,
`fancyhdr`,
`float`,
`floatrow`,
`fmtcount`,
`fontspec`,
`footmisc`,
`geometry`,
`glossaries`,
`graphicx`,
`helvet`,
`hyperref`,
`idxlayout`,
`imakeidx`,
`lipsum`,
`lastpage`,
`lettrine`,
`longtable`,
`makeidx`,
`mathtools`,
`menukeys`,
`multirow`,
`nameref`,
`needspace`,
`newfloat`,
`nowidow`,
`parskip`,
`pdfpages`,
`pifont`,
`ragged2e`,
`refcount`,
`relsize`,
`sectsty`,
`siunitx`,
`silence`,
`subcaption`,
`subfiles`,
`tabularray`,
`tabularx`,
`tcolorbox`,
`tikz`,
`titlesec`,
`tocloft`,
`truncate`,
`verse`,
`vertabim`,
`wrapfig`,
`xcolor`,
`xfrac`,
`xpatch`,

## Contributors

<table style="width: 100%;">
  <tbody>
    <tr>
      <td align="center" valign="top" style="width: 25%;">
        <a href="https://github.com/dylan-moinse">
          <img src="https://www.lvmt.fr/wp-content/uploads/2020/12/mmexport1724838810337_2-150x190.jpg" width="100px;" alt="Dylan Moinse"/>
          <br />
          <sub><b>Dylan Moinse</b></sub>
        </a>
        <br />
        <sub>Author</sub>
        <br />
        <a href="https://github.com/all-contributors/app/commits?author=dylan-moinse" title=""></a>
      </td>
      <td align="center" valign="top" style="width: 25%;">
        <a href="https://github.com/alainlhostis">
          <img src="https://www.lvmt.fr/wp-content/uploads/2016/12/IMG_20221123_102303_rognee-150x190.jpg" width="100px;" alt="Alain L'Hostis"/>
          <br />
          <sub><b>Alain L'Hostis</b></sub>
        </a>
        <br />
        <sub>Supervisor</sub>
        <br />
        <a href="https://github.com/all-contributors/app/commits?author=alainlhostis" title=""></a>
      </td>
      <td align="center" valign="top" style="width: 25%;">
        <a href="">
          <sub><b>Jorge Mariano</b></sub>
        </a>
        <br />
        <sub>Original template</sub>
        <br />
      </td>
    </tr>
  </tbody>
</table>

