class Info {
  final int position;
  final String name;
  final String desc;
  final String url;

  Info(
      this.position,{
        this.name,
        this.desc,
        this.url,
  });
}

List<Info> slides = [
  Info(1,
      name: 'Branches',
      desc: "branches info",
      url: '/branchHome',
  ),

  Info(2,
      name: 'Exams',
      desc: "exam info",
      url: '/examHome',
  ),
  Info(3,
      name: 'Student',
      desc: "student info",
      url: '/studentHome',
  ),
  Info(4,
      name: 'Subjects',
      desc: "subject info",
      url: '/subjectHome',
  ),
  Info(5,
      name: 'College info',
      desc: "college info",
      url: '/collegeInfoHome',
  ),
];