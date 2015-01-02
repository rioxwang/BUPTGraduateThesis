Version
==================
请注意：BUPTGraduateThesis已经更新至v6.0，为了稳定的互联网访问，本项目已经转移到GitCafe下托管，GitHub中只更新到v5.4，自v6.0起不再更新。关于最新版本，请移步GitCafe下的主页（ https://gitcafe.com/rioxwang/BUPTGraduateThesis ）。
v5.4，可以通过Git命令获得：

    git clone https://github.com/baggiorio18/BUPTGraduateThesis.git

About
==================
BUPTGraduateThesis提供北京邮电大学研究生学位论文LaTeX文档类，其符合北邮研究生院2010年3月发布的《关于研究生学位论文格式的统一要求》。
2013年12月，北邮研究生院再次发布新版的格式要求以及硕士论文封面要求，并于2014年3月发布博士论文封面要求，于2014年11月细化了论文参考文献格式的要求，BUPTGraduateThesis从v5.0起将依据新版格式要求修正模板。
目前已经可以生成除了封面之外的所有论文内容，封面由于书脊的存在，需要进一步细调。
我们建议利用BUPTGraduateThesis生成除了封面之外的所有PDF内容，再使用WORD生成封面。
（注：扉页可以正常输出，而封面是打印时需要打印在指定彩纸上的内容，与扉页相比多了书脊这部分内容，需要根据论文薄厚做细调。校内的打印店均可以帮忙依据PDF的扉页生成封面。）

该项目源于张煜博士（Dazzle Zhang）发起并维护的BUPTThesis项目。BUPTThesis造福了几代硕博研究生，大大推动北邮的LaTeX学习氛围。在此，特别感谢Dazzle Zhang所做的贡献！

2013年7月5日，王贤凌博士（Xianling Wang）在buptthesis的基础上增添了更加稳健的中文处理方案，发布了BUPTGraduateThesis。
该项目借助XeTeX引擎，利用xeCJK宏包取代BUPTThesis中的CJK宏包作为中文解决方案。
同时，BUPTGraduateThesis根据研究生院发布的最新要求，对学位论文格式进行微调，并且提供更为详细的用户帮助文档buptgraduatethesis.pdf。


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

Linux/OSX用户请打开SHELL输入如下命令进行安装：

    chmod a+x makethesis
    ./makethesis install

Change Logs
==================
*  v1.0：2013/07/08，初始版本
*  v1.1：2013/07/30，更新 makethesis 的换行模式
*  v1.2：2013/11/14，修正 makethesis.bat 的 BUG
*  v1.3：2013/11/15，修正 makethesis.bat 的 BUG；将 Unicode 指令替换为 char 指令用于引入 Unicode 字符；使用 xeCJKsetcharclass 命令修正 xetex 引擎下的带圈数字脚注
*  v2.0：2013/11/20，增加部分参考文献自定义配置的功能；更新帮助文档
*  v2.1：2013/11/21，修改 article 类型参考文献显示样式
*  v2.2：2013/11/29，修正缩略语在第一次引用时无法出现中文释义的 BUG
*  v2.3：2013/11/29，修改 bibtex 生成的参考文献中 URL 的字体
*  v3.0：2013/12/23，根据新版论文格式要求更新模板
*  v4.0：2013/12/26，根据 xeCJK 宏包的更新修改宏包加载项；修复由于伪粗体带来的复制粘贴的 BUG
*  v5.0：2014/04/14，增添数学字体选项，可以使用 Computer Modern 字体；盲审版本将隐去致谢和独创性等声明页；根据新版硕、博士论文格式要求更新模板和封面；修改参考文献中英文姓名出现 Jr 时的排版，并添加说明；修改帮助文档的字体，不用再依赖 TeX Gyre Pagella 字体；修正图名和表名的字体；改进一系列参考文献排版规则；增加免安装版，解压即可用；去除 makethesis 中安装时的输出重定向，方便排错
*  v5.1：2014/05/31，修正 makethesis 中分章参考文献编译的 BUG，此 BUG 会影响 Linux 和 Unix 用户的分章参考文献输出
*  v5.2：2014/07/17，根据新版论文格式对文档类进行精简；修正封面的 BUG；修正最新版 xeCJK 带来的问题；更新帮助文档
*  v5.3：2014/11/22，修正 buptgraduatethesis.bst 中学位论文类参考文献格式的 BUG
*  v5.4：2014/11/29，根据新版论文格式要求修正学位论文类参考文献的格式
