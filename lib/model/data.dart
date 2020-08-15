import 'package:flutter/cupertino.dart';

class Info {
  final int position;
  final String name;
  final String desc;
  final String url;
  final String img;

  Info(
      this.position,{
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
      img: 'asset/images/Branches.svg'
  ),

  Info(2,
      name: 'Exams',
      desc: "exam info",
      url: '/examHome',
      img: 'asset/images/Exams.svg',
  ),
  Info(3,
      name: 'Student',
      desc: "student info",
      url: '/studentHome',
      img:'asset/images/id.svg',
  ),
  Info(4,
      name: 'Subjects',
      desc: "subject info",
      url: '/subjectHome',
      img: 'asset/images/Subjects.svg',
  ),
  Info(5,
      name: 'College info',
      desc: "college info",
      url: '/collegeInfoHome',
      img: 'asset/images/clg.svg',
  ),
];