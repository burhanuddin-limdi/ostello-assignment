List<String> classList = ["10th", '11th', "12th"];
List<String> subjectList = ['Physics', 'Maths', 'Chemistry'];
List<String> examList = ['JEE Mains', 'JEE Advance', 'Medical', 'Foundations'];
List<String> coachingTypeList = ['Online', 'Offline'];
List<String> courseTypeList = ['Offline', 'Online'];

List<dynamic> mainCourseList = [
  {
    'name': 'Physics Foundation Course',
    'price': 1000,
    "subject": 'Physics',
    'exam': 'JEE Advance',
    'class': '12th',
  },
  {
    'name': 'Physics Crash Course',
    'price': 1000,
    "subject": 'Physics',
    'exam': 'JEE Advance',
    'class': '12th',
  },
  {
    'name': 'Chemistry Advance Course',
    'price': 1000,
    "subject": 'Chemistry',
    'exam': 'JEE Advance',
    'class': '10th',
  },
  {
    'name': 'Chemistry Main Course',
    'price': 1000,
    "subject": 'Chemistry',
    'exam': 'JEE Mains',
    'class': '11th',
  },
  {
    'name': 'Basic Physics Course',
    'price': 1000,
    "subject": 'Physics',
    'exam': 'JEE Mains',
    'class': '11th',
  },
  {
    'name': 'Basic Maths Course',
    'price': 1000,
    "subject": 'Maths',
    'exam': 'JEE Mains',
    'class': '11th',
  },
  {
    'name': 'Basic Chemistry Course',
    'price': 1000,
    "subject": 'Chemistry',
    'exam': 'JEE Mains',
    'class': '11th',
  },
  {
    'name': 'Chemistry Course',
    'price': 1000,
    "subject": 'Chemistry',
    'exam': 'Medical',
    'class': '10th',
  },
  {
    'name': 'Maths Course',
    'price': 1000,
    "subject": 'Maths',
    'exam': 'Foundations',
    'class': '10th',
  },
  {
    'name': 'Foundational Mathematics',
    'price': 1000,
    "subject": 'Maths',
    'exam': 'Foundations',
    'class': '10th',
  },
  {
    'name': 'Physics Course',
    'price': 1000,
    "subject": 'Physics',
    'exam': 'JEE Mains',
    'class': '10th',
  },
  {
    'name': 'Master Physics',
    'price': 1000,
    "subject": 'Physics',
    'exam': 'JEE Mains',
    'class': '10th',
  },
  {
    'name': 'Master Maths',
    'price': 1000,
    "subject": 'Maths',
    'exam': 'Foundations',
    'class': '11th',
  },
];

List filterCourses(dynamic metrics) {
  List filteredCourses = [];
  for (var course in mainCourseList) {
    if (course['subject'] == metrics['subject'] &&
        course['class'] == metrics['class'] &&
        course['exam'] == metrics['exam']) {
      filteredCourses.add(course);
    }
  }
  return filteredCourses;
}
