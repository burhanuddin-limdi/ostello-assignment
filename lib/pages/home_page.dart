import 'package:flutter/material.dart';
import 'package:ostello/widgets/all_courses_section.dart';
import 'package:ostello/widgets/hero_section.dart';
import 'package:ostello/widgets/popular_courses.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeroSection(),
              PopularCourses(),
              SizedBox(height: 30),
              AllCoursesSection(),
            ],
          ),
        ),
      ),
    );
  }
}
