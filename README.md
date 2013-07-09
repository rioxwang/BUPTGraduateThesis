Version
==================
发行版v1.0

BUPTGraduateThesis
==================
BUPTGraduateThesis提供北京邮电大学研究生学位论文LaTeX文档类，其符合北邮研究生院2010年3月1日发布的《关于研究生学位论文格式的统一要求》。

该项目源于张煜博士（Dazzle Zhang）发起并维护的BUPTThesis项目。BUPTThesis造福了几代硕博研究生，大大推动北邮的LaTeX学习氛围。在此，特别感谢Dazzle Zhang所做的贡献！

2013年7月5日，王贤凌博士（WANG Xianling）在buptthesis的基础上增添了更加稳健的中文处理方案，发布了BUPTGraduateThesis。
该项目借助XeTeX引擎，利用xeCJK宏包取代BUPTThesis中的CJK宏包作为中文解决方案。
同时，BUPTGraduateThesis根据研究生院发布的最新要求，对学位论文格式进行微调，并且提供更为细致具体的用户帮助文档buptgraduatethesis.pdf。

Quick Help
==================
快速安装说明
更具体的安装说明与帮助文档请参见 buptgraduatethesis.pdf.

Windows用户请打开CMD，输入如下命令进行安装：
makethesis.bat install
Linux用户请保证Adobe系列字体和TeX Gyre Pagella字体已经安装，然后打开SHELL输入如下命令进行安装：
chmod a+x makethesis
./makethesis install
