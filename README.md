Version
==================
当前版本v7.2，同时托管于GitHub与GitCafe，支持Windows、Linux和OSX平台。该版本可以在项目主页直接下载ZIP压缩包获得，也可以通过如下任意一条git命令选择一个网速较快的服务器获得：

    git clone https://gitcafe.com/rioxwang/BUPTGraduateThesis.git
    git clone https://github.com/rioxwang/BUPTGraduateThesis.git


About
==================
BUPTGraduateThesis提供北京邮电大学研究生学位论文LaTeX文档类，其符合北邮研究生院2014年11月发布的《关于研究生学位论文格式的统一要求》。目前已经可以生成除了封面之外的所有论文内容，封面由于书脊的存在，需要进一步细调。我们建议利用BUPTGraduateThesis生成除了封面之外的所有PDF内容，再使用WORD生成封面。（注：扉页可以正常输出，而封面是打印时需要打印在指定彩纸上的内容，与扉页相比多了书脊这部分内容，需要根据论文薄厚做细调。校内的打印店均可以帮忙依据PDF的扉页生成封面。）

该项目源于张煜博士（Dazzle Zhang）发起并维护的BUPTThesis项目，并由王贤凌博士（rioxwang）在其基础上增添了更加稳健的中文处理方案，于2013年7月5日发布。该项目借助XeTeX引擎，利用xeCJK宏包取代BUPTThesis中的CJK宏包作为中文解决方案。同时，BUPTGraduateThesis根据研究生院发布的最新要求，对学位论文格式进行微调，并且提供更为详细的用户帮助文档buptgraduatethesis.pdf。


Quick Help
==================
快速安装说明

更具体的安装说明与帮助文档请参见buptgraduatethesis.pdf。

为了方便新手入门，BUPTGraduateThesis提供了基于Docstrip的安装方式和免安装压缩包release.zip，用户可以依照自己的习惯选择，免安装方式暂不支持v7.1版。
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