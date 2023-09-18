import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final dynamic data;
  const CourseCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10),
      child: Container(
        width: 230,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 18,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const Image(
                  width: 200,
                  image: AssetImage('assets/images/course_img.png'),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                const Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Icon(
                    Icons.play_circle,
                    color: Colors.white,
                    size: 50,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              data['name'],
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
              ),
            ),
            Row(
              children: [
                Text(
                  '₹${data['price'].toString()}/- Month',
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(width: 5),
                Text(
                  '₹${(data['price'] + 700).toString()}',
                  style: const TextStyle(
                      color: Color(0xff7D23E0),
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Color(0xff7D23E0),
                      fontSize: 10),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Image(
                  width: 15,
                  image: AssetImage('assets/images/history_icon.png'),
                ),
                SizedBox(width: 5),
                Text(
                  '1 Year Course Duration',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            const SizedBox(height: 5),
            const Row(
              children: [
                Image(
                  width: 15,
                  image: AssetImage('assets/images/book_icon.png'),
                ),
                SizedBox(width: 5),
                Text(
                  'Offline . Online',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            const SizedBox(height: 15),
            FractionallySizedBox(
              widthFactor: 1,
              child: ElevatedButton(
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(0),
                  backgroundColor: MaterialStatePropertyAll(Color(0xff7D23E0)),
                ),
                onPressed: () {},
                child: const Text(
                  'Buy Now',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 1,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      elevation: MaterialStatePropertyAll(0),
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      side: MaterialStatePropertyAll(
                          BorderSide(color: Color(0xff7D23E0)))),
                  onPressed: () {},
                  child: const Text('Add to Cart')),
            ),
            const SizedBox(height: 15),
            const Flex(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              direction: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.circle,
                    size: 8,
                    color: Color(0xff6D6D6D),
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: Text(
                    'Recorded lectures by Ostello',
                    style: TextStyle(color: Color(0xff6D6D6D), fontSize: 12),
                  ),
                )
              ],
            ),
            const Flex(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              direction: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.circle,
                    size: 8,
                    color: Color(0xff6D6D6D),
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: Text(
                    'Full lifetime access',
                    style: TextStyle(color: Color(0xff6D6D6D), fontSize: 12),
                  ),
                )
              ],
            ),
            const Flex(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              direction: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.circle,
                    size: 8,
                    color: Color(0xff6D6D6D),
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: Text(
                    'Exercise files',
                    style: TextStyle(color: Color(0xff6D6D6D), fontSize: 12),
                  ),
                )
              ],
            ),
            const Flex(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              direction: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.circle,
                    size: 8,
                    color: Color(0xff6D6D6D),
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: Text(
                    'Mock tests and assignments',
                    style: TextStyle(color: Color(0xff6D6D6D), fontSize: 12),
                  ),
                )
              ],
            ),
            const Flex(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              direction: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.circle,
                    size: 8,
                    color: Color(0xff6D6D6D),
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: Text(
                    'Doubt clearing sessions',
                    style: TextStyle(color: Color(0xff6D6D6D), fontSize: 12),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
