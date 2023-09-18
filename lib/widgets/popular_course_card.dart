import 'package:flutter/material.dart';

class PopularCourseCard extends StatelessWidget {
  final dynamic data;
  const PopularCourseCard({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, right: 20, left: 20, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/images/bestseller.png'),
                                  width: 75,
                                ),
                                SizedBox(height: 30)
                              ],
                            ),
                            const SizedBox(width: 60),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '₹${(int.parse(data['price']) + 3000).toString()}',
                                  style: const TextStyle(
                                      color: Color(0xff959292),
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Color(0xff959292),
                                      fontSize: 10),
                                ),
                                Text(
                                  '₹${data['price']} only',
                                  style: const TextStyle(
                                      color: Color(0xff374BFE),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14),
                                ),
                                const Text(
                                  'for one year',
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Color(0xff959292),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            const Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/book_icon.png'),
                                  width: 15,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Physics. Chemistry. Maths',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            const SizedBox(width: 25),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: Color(0xff00D566),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                              ),
                              child: const Row(children: [
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                                Image(
                                  image: AssetImage(
                                      'assets/images/start_icon.png'),
                                  width: 15,
                                )
                              ]),
                            )
                          ],
                        ),
                        const SizedBox(height: 7),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage('assets/images/reviewers.png'),
                              width: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '50+ students already enrolled!',
                              style: TextStyle(fontSize: 9),
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: const Color(0xff7E24E1),
                                elevation: 0,
                                side: const BorderSide(
                                  color: Color(0xff7E24E1),
                                  width: 2.0,
                                ),
                                backgroundColor: Colors.white,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 17),
                              ),
                              child: const Text(
                                'Add to Cart',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                elevation: 0,
                                side: const BorderSide(
                                  color: Color(0xff7E24E1),
                                  width: 2.0,
                                ),
                                backgroundColor: const Color(0xff7E24E1),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 17),
                              ),
                              child: const Text(
                                'Enquire Now',
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 256,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xff7E24E1),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flex(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          direction: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 170,
                              child: Text(
                                '1 Year Power Step Classroom Course for  JEE (Main & Advance)',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Flex(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          direction: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                '2 Year First Step Integrated Classroom Course (Main & Advance)',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              decoration: const BoxDecoration(
                color: Color(0xffFDD835),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Text(
                data['name'],
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
