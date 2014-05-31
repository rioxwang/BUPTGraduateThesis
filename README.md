Version
==================
发行版v5.0在GitHub的release条目下获得。
开发版v5.1，可以通过Git命令获得：

    git clone https://github.com/baggiorio18/BUPTGraduateThesis.git

About
==================
BUPTGraduateThesis提供北京邮电大学研究生学位论文LaTeX文档类，其符合北邮研究生院2010年3月1日发布的《关于研究生学位论文格式的统一要求》。
2013年12月16日，北邮研究生院再次发布新版《关于研究生学位论文格式的统一要求》以及硕士论文封面要求，并于2014年3月20日发布博士论文封面要求，BUPTGraduateThesis从v5.0起将依据新版格式要求修正模板。
目前已经可以生成除了封面之外的所有论文内容，封面由于书脊的存在，需要进一步细调，目前正在增强中。
因此我们建议仍然使用WORD生成封面（注意：扉页可以正常输出，而封面是打印时需要打印在彩纸上的内容，与扉页相比多了书脊这部分内容，需要根据论文薄厚做细调）。

该项目源于张煜博士（Dazzle Zhang）发起并维护的BUPTThesis项目。BUPTThesis造福了几代硕博研究生，大大推动北邮的LaTeX学习氛围。在此，特别感谢Dazzle Zhang所做的贡献！

2013年7月5日，王贤凌博士（Xianling Wang）在buptthesis的基础上增添了更加稳健的中文处理方案，发布了BUPTGraduateThesis。
该项目借助XeTeX引擎，利用xeCJK宏包取代BUPTThesis中的CJK宏包作为中文解决方案。
同时，BUPTGraduateThesis根据研究生院发布的最新要求，对学位论文格式进行微调，并且提供更为细致具体的用户帮助文档buptgraduatethesis.pdf。


Quick Help
==================
快速安装说明

更具体的安装说明与帮助文档请参见buptgraduatethesis.pdf。

为了方便新手入门，BUPTGraduateThesis提供了基于Docstrip的安装方式和免安装压缩包release.zip，用户可以依照自己的习惯选择，两者方式差别不大。
使用免安装压缩包的用户，只需要将release.zip解压，并将所有文件拷贝到主目录下即可正常使用（注意备份已有工作！）。

为了生成用户帮助文档buptgraduatethesis.pdf，安装前请保证Adobe系列中文字体已经安装。

Adobe系列字体用于提供免费的常用中文字体：
*  AdobeFangsongStd-Regular.otf
*  AdobeHeitiStd-Regular.otf
*  AdobeKaitiStd-Regular.otf
*  AdobeSongStd-Light.otf

Windows用户请打开CMD，输入如下命令进行安装：

    makethesis.bat install

Linux用户请打开SHELL输入如下命令进行安装：

    chmod a+x makethesis
    ./makethesis install

