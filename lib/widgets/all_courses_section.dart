import 'package:flutter/material.dart';
import 'package:ostello/services/filter_service.dart';
import 'package:ostello/widgets/all_course_card.dart';
import 'package:ostello/widgets/course_dropdown.dart';

class AllCoursesSection extends StatefulWidget {
  const AllCoursesSection({super.key});

  @override
  State<AllCoursesSection> createState() => _AllCoursesSectionState();
}

class _AllCoursesSectionState extends State<AllCoursesSection> {
  late List courseList;
  late dynamic metrics;
  @override
  void initState() {
    metrics = {
      'class': classList.first,
      'subject': subjectList.first,
      'exam': examList.first,
    };
    courseList = filterCourses(metrics);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      decoration: const BoxDecoration(color: Color(0xffF2F7FB)),
      child: Column(
        children: [
          const Text(
            'All Courses',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CourseDropdown(
                data: classList,
                width: 92,
                color: const Color(0xff7D23E0),
                onSelected: (e) {
                  setState(() {
                    metrics['class'] = e;
                    courseList = filterCourses(metrics);
                  });
                },
              ),
              CourseDropdown(
                data: subjectList,
                width: 124,
                color: const Color(0xff7D23E0),
                onSelected: (e) {
                  setState(() {
                    metrics['subject'] = e;
                    courseList = filterCourses(metrics);
                  });
                },
              ),
              CourseDropdown(
                data: examList,
                width: 131,
                color: const Color(0xff7D23E0),
                onSelected: (e) {
                  setState(() {
                    metrics['exam'] = e;
                    courseList = filterCourses(metrics);
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CourseDropdown(
                data: coachingTypeList,
                width: 150,
                color: const Color(0xff6F6F6F),
                onSelected: (e) {},
              ),
              CourseDropdown(
                data: courseTypeList,
                width: 150,
                color: const Color(0xff6F6F6F),
                onSelected: (e) {},
              )
            ],
          ),
          if (courseList.isNotEmpty)
            SizedBox(
              height: 475,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: courseList.length,
                  itemBuilder: (context, index) {
                    return CourseCard(
                      data: courseList[index],
                    );
                  },
                ),
              ),
            ),
          const SizedBox(height: 40),
          if (courseList.isEmpty)
            const Text('No Courses available. Kindly change metrics'),
        ],
      ),
    );
  }
}
