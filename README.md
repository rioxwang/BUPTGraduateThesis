Version
==================
发行版v2.0在GitHub的release条目下获得。
开发版v2.1，可以通过Git命令获得：

    git clone https://github.com/baggiorio18/BUPTGraduateThesis.git

About
==================
BUPTGraduateThesis提供北京邮电大学研究生学位论文LaTeX文档类，其符合北邮研究生院2010年3月1日发布的《关于研究生学位论文格式的统一要求》。

该项目源于张煜博士（Dazzle Zhang）发起并维护的BUPTThesis项目。BUPTThesis造福了几代硕博研究生，大大推动北邮的LaTeX学习氛围。在此，特别感谢Dazzle Zhang所做的贡献！

2013年7月5日，王贤凌博士（WANG Xianling）在buptthesis的基础上增添了更加稳健的中文处理方案，发布了BUPTGraduateThesis。
该项目借助XeTeX引擎，利用xeCJK宏包取代BUPTThesis中的CJK宏包作为中文解决方案。
同时，BUPTGraduateThesis根据研究生院发布的最新要求，对学位论文格式进行微调，并且提供更为细致具体的用户帮助文档buptgraduatethesis.pdf。

Quick Help
==================
快速安装说明

更具体的安装说明与帮助文档请参见buptgraduatethesis.pdf。

为了生成用户帮助文档buptgraduatethesis.pdf，安装前请保证Adobe系列中文字体和TeX Gyre Pagella字体已经安装。

Adobe系列字体用于提供免费的常用中文字体：
*  AdobeFangsongStd-Regular.otf
*  AdobeHeitiStd-Regular.otf
*  AdobeKaitiStd-Regular.otf
*  AdobeSongStd-Light.otf

对于TeX Gyre Pagella字体，如果使用CTEX的发行版本，则该套字体已经装入系统中；如果使用TeX Live 2013的发行版本，则需要从"~/texmf-dist/fonts/opentype/public/tex-gyre"和"~/texmf-dist/fonts/opentype/public/tex-gyre-math"这两个文件夹获得如下字体文件：
*  texgyrepagella-bold.otf
*  texgyrepagella-bolditalic.otf
*  texgyrepagella-italic.otf
*  texgyrepagella-math.otf
*  texgyrepagella-regular.otf

Windows用户请打开CMD，输入如下命令进行安装：

    makethesis.bat install

Linux用户请打开SHELL输入如下命令进行安装：

    chmod a+x makethesis
    ./makethesis install
