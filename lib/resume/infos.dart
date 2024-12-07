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
    'Your Email',
    'Your URL',
    'Your Birthday',
    'Your Name',
    'iOS Dev',
    'Male',
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
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis leo ut libero lacinia eleifend et a quam. Donec bibendum, ligula ut mattis porttitor, tellus elit condimentum lectus, ut blandit sapien ligula sed justo. In tristique nulla eu suscipit condimentum. Sed in ex leo. Fusce metus dolor, suscipit ac ligula non, suscipit tristique nulla. Maecenas aliquet pharetra dolor, eu pellentesque massa scelerisque ut. Cras ac urna a enim maximus commodo. Proin consequat nunc et pulvinar mattis. Pellentesque quis mauris ut erat scelerisque hendrerit. Fusce tristique vel dui sagittis auctor. Suspendisse lobortis euismod tortor, a ornare tellus. Praesent quam massa, eleifend in fringilla condimentum, mollis sit amet mauris.';

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
  ExperienceInfoModel(
      "Company1", "iOS Dev", "yyyy,mm - yyyy,mm", "Dev", "Idle"),
  ExperienceInfoModel("Company2", "iOS Dev", "yyyy,mm - yyyy,mm", "Dev", "Idle")
];
