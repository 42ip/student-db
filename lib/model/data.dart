class Info {
  final int position;
  final String name;
  final String desc;
  final String url;
  final String img;

  Info(
    this.position, {
    this.name,
    this.desc,
    this.url,
    this.img,
  });
}

List<Info> slides = [
  Info(1,
      name: 'Branches',
      desc: "branches info",
      url: '/branchHome',
      img: "assets/images/Branches.png"),
  Info(
    2,
    name: 'Exams',
    desc: "exam info",
    url: '/examHome',
    img: "assets/images/Exams.png",
  ),
  Info(
    3,
    name: 'Student',
    desc: "student info",
    url: '/studentHome',
    img: "assets/images/id.png",
  ),
  Info(
    4,
    name: 'Subjects',
    desc: "subject info",
    url: '/subjectHome',
    img: "assets/images/Subjects.png",
  ),
  Info(
    5,
    name: 'College info',
    desc: "college info",
    url: '/collegeInfoHome',
    img: "assets/images/clg.png",
  ),
];
