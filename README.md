Update to v4.0 or above as soon as possibile!
==================
各位使用BUPTGraduateThesis的同学们请注意，在北邮人论坛muyiwhy0523@gmail.com的提醒下，发现一个重大BUG，很可能会影响论文的查重！

问题来源是新版格式要求中明确要求在封面使用粗宋体和粗黑体这两种伪粗体，而xeCJK在中易系列字体的伪粗体和正常体混排时，存在复制粘贴乱码的BUG。
一旦复制粘贴出现问题，很有可能会影响论文的查重。

此问题已经在CTEX论坛上提交，尚未获得回复。
目前BUPTGraduateThesis在v4.0上采用了一定的权宜之计，将封面需要加粗的字体修改为Adobe系列字体（字体无法统一，实在是权宜之计），避免伪粗中易宋体/黑体和正常中易宋体/黑体同时出现，暂时解决了这个BUG。

在此再作声明：*因使用本模板造成的一切后果由使用者自己承担。*
给各位用户带来的不便，深感抱歉。
非常感谢muyiwhy0523@gmail.com协助找到此BUG，也欢迎其他用户们协助找到更多的BUG，帮助BUPTGraduateThesis茁壮成长。

Version
==================
发行版v4.0在GitHub的release条目下获得。
开发版同发行版，可以通过Git命令获得：

    git clone https://github.com/baggiorio18/BUPTGraduateThesis.git

About
==================
BUPTGraduateThesis提供北京邮电大学研究生学位论文LaTeX文档类，其符合北邮研究生院2010年3月1日发布的《关于研究生学位论文格式的统一要求》。
2013年12月16日，北邮研究生院再次发布新版《关于研究生学位论文格式的统一要求》，BUPTGraduateThesis从v3.0起将依据新版格式要求修正模板。
目前已经可以生成除了封面之外的所有论文内容，封面由于书脊的存在，需要进一步细调，目前正在增强中。
因此我们建议仍然使用WORD生成封面（注意：扉页可以正常输出，而封面是打印时需要打印在彩纸上的内容，与扉页相比多了书脊这部分内容，需要根据论文薄厚做细调）。

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

To Do List
==================
接下来想做的是通过LaTeX生成封面的PDF，关键的问题在于：由于多了书脊，需要对纸张大小以及封面个元素的位置作进一步调整。