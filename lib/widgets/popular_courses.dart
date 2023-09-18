import 'package:flutter/material.dart';
import 'package:ostello/widgets/popular_course_card.dart';

class PopularCourses extends StatelessWidget {
  const PopularCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 30),
      width: double.infinity,
      decoration: const BoxDecoration(color: Color(0xfff2f7fb)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: Text(
              'Popular Courses',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 360,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: courseData.length,
                itemBuilder: (context, index) {
                  return PopularCourseCard(
                    data: courseData[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final courseData = [
  {'name': 'Engineering', 'price': "9000"},
  {'name': 'Medical', 'price': "7000"},
  {'name': 'Commerce', 'price': "5000"},
];
