class SelfInfo {
  final String name;
  final String title;
  final String birthday;
  final String email;
  final String url;
  final String gender;
  final String school;
  final String degree;
  final String academicSpecialty;
  final String inSchoolDay;
  SelfInfo(
      this.email,
      this.url,
      this.birthday,
      this.name,
      this.title,
      this.gender,
      this.school,
      this.degree,
      this.academicSpecialty,
      this.inSchoolDay);
}

final SelfInfo myInfo = SelfInfo(
    'swlfigo@gmail.com',
    'https://isylar.com',
    '1993.02',
    '苏文略',
    'iOS开发',
    '男',
    'Your School',
    'Your Degree',
    'Your AS',
    'Your Learning Day');

final List<Map<String, String>> SkillsSetInfo = [
  {
    "Objective-C": 'assets/images/objectivec-plain.svg',
  },
  {"Flutter": 'assets/images/flutter-original.svg'},
  {"Swift": 'assets/images/swift-original.svg'},
  {"JavaScript": 'assets/images/javascript-original.svg'},
  {"Typescript": 'assets/images/typescript-original.svg'},
  {"Golang": 'assets/images/goland-original.svg'},
  {"Docker": 'assets/images/docker-original.svg'},
  {"Git": 'assets/images/git-original.svg'},
];

const String selfDescription =
    'iOS8年+开发经验,熟悉Objective-C,了解Swift,SwiftUI,Flutter.熟练使用Xcode,Cocoapod等开发工具.丰富开发经验,掌握iOS各组件开发使用及对常用第三方库使用.了解Python,Golang,JS等常用语言开发使用.英语过CET6具备良好的英文读写能力.有很强自学能力,喜欢专研技术.热爱编程,责任心强,有独立思考和解决问题能力';

final List<Map<String, String>> contactInfoMap = [
  {'Birthday: ': myInfo.birthday},
  {'Email: ': myInfo.email},
  {'URL: ': myInfo.url},
];

class ExperienceInfoModel {
  final String companyName;
  final String titleName;
  final String workDays;
  final String responseble;
  final String jobDescription;

  ExperienceInfoModel(this.companyName, this.titleName, this.workDays,
      this.responseble, this.jobDescription);
}

final List<ExperienceInfoModel> myExperience = [
  ExperienceInfoModel("Web3项目开发", "全栈开发", "2022.12 - 2024.05",
      "使用Golang,Redis等技术开发", "使用Golang,Redis等技术开发"),
  ExperienceInfoModel(
      "阿里巴巴(中国)有限公司",
      "iOS开发",
      "2021.08 - 2022.12",
      "负责 UC浏览器 直播模块,信息流 开发",
      '''适配iOS端开播侧直播SDK接口。对FFmpeg进行二次开发,新增动态码率功能使主播在弱网环境下也能顺利直播,降 低卡顿率20%。
借鉴队列模型创建直播事件流水线,处理直播SDK抛出的异步异常及直播事件。降低主播感知重连率80%。 
协同前端H5开发直播互动层。开发WebKit同层渲染互动层协议。接入PAG动效工作框架实现H5控制原生平台播放
礼物动画。 
使用预加载技术加载直播间礼物动画，优化直播间互动层加载礼物素材速度,缩短礼物首次展示时间30%。 
研发直播间列表预加载下个直播间技术,提升切换直播间秒播率60%,内存涨幅控制在30%内。 
修复Flutter跨平台视频编辑SDK功能并提供《央视新闻》客户端使用。 
研发实时LogSDK与引入Lookin等效率工具,加入UC浏览器开发流程提升开发效率。'''),
  ExperienceInfoModel(
      "广州金十信息科技有限公司", "iOS开发", "2019.03 - 2021.08", "负责 金十数据,金十期货,美港电讯 开发", '''
开发适配各个iOS系统的 黑暗模式 功能,达到流畅丝滑切换黑暗与日间模式。 使用Pod私有库封装各个核心模块并部署到每个App进行敏捷开发。
适配 iOS14 新特性,使用 SwiftUI 开发事件日历与新闻热点Widget。编写Shell脚本排查与解决项目中Cell的不规 范使用导致iOS14下无法点击问题。
适配 Launchscreen 启动⻚并解决可能出现的缓存导致引导图无法及时更新问题。
负责今日插件(Today Extentsion)开发 ; 在 弹幕评论组件 使用 异步绘制 与 缓存池 技术优化多评论弹出时性能问
题 ; 负责竖屏短视频模块开发,为视频添加 边播缓存功能,做到节省流量与快速加载效果 ; 适配项目 OC , Swift 混编环境配置,使用 Socket.IO 与 SQLite 配合后端开发App内聊天IM模块。
使用 Python 编写脚本检测项目中无用图片素材的引用,合理优化包的大小;使用 XCode Profile Guided Optimization 优化启动速度并提高 37% 启动速度。'''),
  ExperienceInfoModel(
      "广州市美人信息科技有限公司", "iOS开发", "2015.12 - 2019.03", "负责 美人相机,社区社交组件 开发", '''
对拍摄界面镜头模块重构,将MRC模块重构为ARC并抽离为公共模块,通过Pod进行管理。 与图像算法底层组对接,使用 OpenglES 实现镜头实时滤镜以及动态贴纸功能需求。
对日常开发中存在的界面卡顿问题通过 Instruments 进行检测分析并且进行解决。对于存在的内存问题通过 Instruments 和 Debug Memory Graph 进行检测分析和解决，线程问题通过 Thread Sanitizer 检测和解决， 减少线程安全问题的出现.上线后通过 Bugly 收集到的线上版本崩溃数据，定位到项目模块中进行修复维护。
负责个人空间模块，帖子详情模块，作品详情模块，话题作品模块 开发。 使用CADisplayLink检测滑动FPS卡顿,对Feed流模块采取多线程加载数据计算布局信息，FPS平均提升5%。 研发动态路由组件库,解决各个模块跳转及参数传递中出现的耦合问题。
'''),
];
