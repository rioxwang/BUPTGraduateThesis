About New
==================
BUPTGraduateThesis原始版本是由[BUPTGraduateThesis](https://github.com/rioxwang/BUPTGraduateThesis.git)仓库提供,但该项目在2020后停止了更新，为了继续推动此文档的发展，本项目在原有基础上做出修改，具体修改内容请查看Commits。因个人能力有限，如有疏漏，请提PR或直接指正：licm@bupt.edu.cn

v1.2：根据2024年北京邮电大学研究生学位论文写作与制作规范，同步修改一下内容：
* 页眉居中
* 摘要页、目录页添加页眉页脚
* 添加扉页日期字段
* 摘要关键字分隔方式改为分号分隔
* 修改成果页标题：攻读学位期间取得的“创新成果”目录
* 解决新版本TexLive的Command \glsdisplayfirst undefined错误

v1.1：根据2023年北邮研究生院论文要求，本仓库同步修改以下内容：
1. 扉页修改内容：
* 去除保密期限字段，密集字段右对齐
* 去除日期字段
* 修改 专业 为 学科专业
* 硕士学位论文后添加 学术学位 or 专业学位
* 添加培养方式字段 （training mode）
2. 解决英文扉页密级显示中文的bug
3. 添加学术委员会名单页面(committee)：bear_thesis.tex 中指定是否添加学术委员会名单页面，install后生成 committee.tex文件

以下是原仓库README内容：

About
==================
BUPTGraduateThesis提供北京邮电大学研究生学位论文LaTeX文档类，其符合北邮研究生院2014年11月发布的《关于研究生学位论文格式的统一要求》，目前已根据2017年标准修正格式、添加英文扉页。目前已经可以生成除了封面之外的所有论文内容，封面由于书脊的存在，需要进一步细调。我们建议利用BUPTGraduateThesis生成除了封面之外的所有PDF内容，再使用WORD生成封面。（注：扉页可以正常输出，而封面是打印时需要打印在指定彩纸上的内容，与扉页相比多了书脊这部分内容，需要根据论文薄厚做细调。校内的打印店均可以帮忙依据PDF的扉页生成封面。）

该项目源于张煜博士（Dazzle Zhang）发起并维护的BUPTThesis项目，并由王贤凌博士（rioxwang）在其基础上增添了更加稳健的中文处理方案，于2013年7月5日发布。该项目借助XeTeX引擎，利用xeCJK宏包取代BUPTThesis中的CJK宏包作为中文解决方案。同时，BUPTGraduateThesis根据研究生院发布的最新要求，对学位论文格式进行微调，并且提供更为详细的用户帮助文档buptgraduatethesis.pdf。


Quick Help
==================
快速安装说明

更具体的安装说明与帮助文档请参见buptgraduatethesis.pdf。

为了方便新手入门，BUPTGraduateThesis提供了基于Docstrip的安装方式和免安装压缩包release_7.2.zip，用户可以依照自己的习惯选择，免安装方式支持v7.2版。
使用免安装压缩包的用户，只需要将release_7.2.zip解压，并将所有文件拷贝到主目录下即可正常使用（注意备份已有工作！）。

为了生成用户帮助文档buptgraduatethesis.pdf，安装前请保证Adobe系列中文字体已经安装。

Adobe系列字体用于提供免费的常用中文字体：

*  AdobeFangsongStd-Regular.otf
*  AdobeHeitiStd-Regular.otf
*  AdobeKaitiStd-Regular.otf
*  AdobeSongStd-Light.otf

注意：win10系统，需要在下载字体上右击选择为所有用户安装

Windows用户请打开CMD，输入如下命令进行安装：

    makethesis.bat install

Linux/OSX用户请打开SHELL输入如下命令进行安装：

    chmod a+x makethesis
    ./makethesis install


Read Me（使用前必读）
==================
由于BUPTGraduateThesis的编译过程较为复杂，Windows用户直接使用WinEdt的按钮执行编译会出现参考文献、已发表学术论文目录等不能正确编译，因此建议Windows用户在CMD下使用预先编写好的批处理文件`makethesis.bat`编译，Linux/OSX用户在SHELL下使用文件`makethesis`。高阶用户可以阅读批处理文件，深入了解BUPTGraduateThesis编译的过程。

此外，用户在编译前需要对`makethesis.bat`（`makethesis`）进行简单的配置，详细内容请查阅用户帮助文档`buptgraduatethesis.pdf`。配置的方法为：用编辑器打开批处理文件`makethesis.bat`，定位到`User Configuration`模块，修改
* `TARGET` 目标文件，生成论文的文件名，同时也是最外层TEX文件的文件名
* `MAINMATTER` 各章节TEX文件的文件名，以空格分开，不包括附录。示例：`MAINMATTERS=(ch_intro ch_chapter2 ch_chapter3 ch_chapter4 ch_chapter5 ch_concln)`
* `BIBTYPE` 参考文献方式，`chapbib` 为分章参考文献，`allbib` 为全文参考文献


Change Logs
==================
*  v7.2：2020/01/03，更新 `subfigure` 宏包为较新的 `subfig` 宏包，配合`\subfloat{}`实现更方便的子图功能，在`\subfloat{}`与另一个`\subfloat{}`之间用`\\`隔开，可以实现子图的上下垂直排列。
*  v7.1：2018/03/16，添加英文扉页、根据2017年标准修正格式
*  v7.0：2016/11/23，修正涉密论文中的BUG；修正参考文献格式控制的BUG；增加博士后研究报告类型；根据新版xeCJK宏包更新命令；更新声明内容；根据新版glossaries宏包更新命令
*  v6.2：2015/04/23，修正参考文献列表序号不对齐的BUG（v6.1用户升级请在cls文件中搜索multibib宏包，删除其resetlabels选项的调用，在各个ch_xxx.tex和pubs.tex调用参考文献数据库之前使用\setcounter{NAT@ctr}{0}
重置参考文献计数器）
*  v6.1：2015/01/16，修正发表论文列表中序号不对齐的BUG
*  v6.0：2014/01/02，重新整理buptgraduatethesis.bst；在bare_thesis.bib中给出各类参考文献模板；更新帮助文档；迁移到GitCafe
*  v5.4：2014/11/29，根据新版论文格式要求修正学位论文类参考文献的格式
*  v5.3：2014/11/22，修正buptgraduatethesis.bst中学位论文类参考文献格式的BUG
*  v5.2：2014/07/17，根据新版论文格式对文档类进行精简；修正封面的BUG；修正最新版xeCJK带来的问题；更新帮助文档
*  v5.1：2014/05/31，修正makethesis中分章参考文献编译的BUG，此BUG会影响Linux和Unix用户的分章参考文献输出
*  v5.0：2014/04/14，增添数学字体选项，可以使用Computer Modern字体；盲审版本将隐去致谢和独创性等声明页；根据新版硕、博士论文格式要求更新模板和封面；修改参考文献中英文姓名出现Jr时的排版，并添加说明；修改帮助文档的字体，不用再依赖TeX Gyre Pagella字体；修正图名和表名的字体；改进一系列参考文献排版规则；增加免安装版，解压即可用；去除makethesis中安装时的输出重定向，方便排错
*  v4.0：2013/12/26，根据xeCJK宏包的更新修改宏包加载项；修复由于伪粗体带来的复制粘贴的BUG
*  v3.0：2013/12/23，根据新版论文格式要求更新模板
*  v2.3：2013/11/29，修改bibtex生成的参考文献中URL的字体
*  v2.2：2013/11/29，修正缩略语在第一次引用时无法出现中文释义的 BUG
*  v2.1：2013/11/21，修改article类型参考文献显示样式
*  v2.0：2013/11/20，增加部分参考文献自定义配置的功能；更新帮助文档
*  v1.3：2013/11/15，修正makethesis.bat的BUG；将Unicode指令替换为char指令用于引入Unicode字符；使用xeCJKsetcharclass命令修正xetex引擎下的带圈数字脚注
*  v1.2：2013/11/14，修正makethesis.bat的BUG
*  v1.1：2013/07/30，更新makethesis的换行模式
*  v1.0：2013/07/08，初始版本

To Do List
==================

*  整理文档类的代码，增添注释，便于更多人一起学习LaTeX
*  在书签中输出章节编号
*  改进文档参考文献输入规范与IEEE参考文献输入规范的兼容性
