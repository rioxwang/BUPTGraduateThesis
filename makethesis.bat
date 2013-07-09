@echo off
REM --------------------------------------------------------------------------
REM Filename: makethesis.bat
REM Author: WANG Xianling
REM Created: 2013-07-08
REM Version: 1.0
REM --------------------------------------------------------------------------
REM Change Log
REM v1.0: Batch file created.
REM       1. 'clean', 'install' and 'thesis' functions are defined.
REM       2. 'xetex' engine w/o chapbib are defined.
REM --------------------------------------------------------------------------
REM User Configuration
REM Project name
set PROJECT=buptgraduatethesis
REM File name of your top-level tex file.
set TARGET=bare_thesis
REM File name list of tex files for mainmatters.
set MAINMATTERS=(ch_intro ch_concln)
REM Driver type to build PDF.
REM 'xetex' for xetex engine;
set DRIVER=xetex
REM Bib type to construct bibliography.
REM 'chapbib' for bib per chapter; 'allbib' for bib in thesis end.
set BIBTYPE=chapbib
REM --------------------------------------------------------------------------
REM Main Function Selection

if /I {%1}=={clean} goto clean
if /I {%1}=={install} goto install
if /I {%1}=={thesis} goto thesis
REM Default Selection: thesis
goto thesis

REM --------------------------------------------------------------------------
REM TMP Files Clearance
:clean
echo Clearing TMP files...
echo Clearing TMP files in installation...
del *.dvi *.ps >nul
echo Clearing TMP files in thesis generation...
del *.bbl *.blg *.aux *.log *.acn *.glo *.ist *.acr *.alg *.out *.toc *.thm *.ps *.dvi >nul
echo ===========================================
echo = Mission Done!
echo = ALL TMP files are cleared!
echo ===========================================
goto end

REM --------------------------------------------------------------------------
REM Document Class and Help PDF File Generation
:install
echo Extracting and installing files...
xetex install\%PROJECT%.ins >nul
echo Building user guide...
xelatex -no-pdf install\%PROJECT%.dtx >nul
makeindex -q -s gglo.ist -o %PROJECT%.gls %PROJECT%.glo >nul
echo Rebuilding to generate change-log...
xelatex -no-pdf install\%PROJECT%.dtx >nul
makeindex -q -s gglo.ist -o %PROJECT%.gls %PROJECT%.glo >nul
echo Rebuilding to generate cross-reference...
xelatex install\%PROJECT%.dtx >nul
echo Clearing TMP files...
del /f /q %PROJECT%.aux %PROJECT%.glo %PROJECT%.ilg %PROJECT%.ind >nul
del /f /q %PROJECT%.out %PROJECT%.toc %PROJECT%.idx %PROJECT%.hd %PROJECT%.xdv %PROJECT%.gls >nul
echo ===========================================
echo = Mission Done!
echo = BUPTThesis is successfully installed!
echo ===========================================
goto end

REM --------------------------------------------------------------------------
REM Thesis PDF Generation
:thesis
REM Check the user input configuration.
echo ===========================================
echo =
echo = TARGET=%TARGET%
echo = MAINMATTERS=%MAINMATTERS%
echo = DRIVER=%DRIVER%
echo = BIBTYPE=%BIBTYPE%
echo =
echo ===========================================
echo Double check above configurations! Press anykey to continue, CTRL+C to stop!
pause
REM Check the integrity of the installation.
echo Checking Existence of Essential Files...
if not exist %PROJECT%.cls (
  echo ===========================================
  echo = Mission Failed!
  echo = Cannot find essential files!
  echo = Please 'makethesis.bat install' to reinstall BUPTGraduateThesis!
  echo ===========================================
  goto end
)
if not exist %PROJECT%.cfg (
  echo ===========================================
  echo = Mission Failed!
  echo = Cannot find essential files!
  echo = Please 'makethesis.bat install' to reinstall BUPTGraduateThesis!
  echo ===========================================
  goto end
)
if not exist %PROJECT%.bst (
  echo ===========================================
  echo = Mission Failed!
  echo = Cannot find essential files!
  echo = Please 'makethesis.bat install' to reinstall BUPTGraduateThesis!
  echo ===========================================
  goto end
)
echo Document class installed! Generating Thesis PDF...
REM Generate the thesis PDF according to different configurations.
echo Generating Thesis PDF...
if %DRIVER%==xetex (
  echo Building thesis PDF...
  xelatex %TARGET%
  echo Processing BIB files...
  if %BIBTYPE%==chapbib (
    for %%MATTER in %MAINMATTERS% do ( bibtex %%MATTER >nul )
  )
  else bibtex %TARGET% .nul
  bibtex jrnl.aux >nul
  bibtex conf.aux >nul
  echo Processing index files...
  makeindex -s %TARGET%.ist -t %TARGET%.alg -o %TARGET%.acr %TARGET%.acn >nul 2>nul
  echo Rebuilding to generate cross-reference...
  xelatex %TARGET% >nul
  xelatex %TARGET% >nul
)
else echo Engine Undefined!
echo ===========================================
echo = Mission Done!
echo = Thesis PDF is successfully generated!
echo ===========================================
goto end

REM --------------------------------------------------------------------------
REM Execution Finish
:end
REM EOF
