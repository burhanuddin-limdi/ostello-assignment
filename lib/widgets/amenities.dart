import 'package:flutter/material.dart';

class Amenities extends StatelessWidget {
  const Amenities({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Amenities',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Image(
                            width: 20,
                            image: AssetImage('assets/images/ac_logo.png'),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Air-conditioning',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6D6D6D)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Image(
                            width: 20,
                            image: AssetImage('assets/images/wifi_logo.png'),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Free Wifi',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6D6D6D)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Image(
                            width: 20,
                            image: AssetImage('assets/images/books_logo.png'),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Study Material',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6D6D6D)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Image(
                            width: 20,
                            image: AssetImage('assets/images/cafe_logo.png'),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Cafeteria',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6D6D6D)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Image(
                            width: 20,
                            image: AssetImage('assets/images/cctv_logo.png'),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'CCTC',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6D6D6D)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Image(
                            width: 20,
                            image: AssetImage('assets/images/teacher_logo.png'),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Ostello Counselling',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6D6D6D)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
