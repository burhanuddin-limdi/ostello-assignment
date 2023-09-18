import 'package:flutter/material.dart';
import 'package:ostello/widgets/amenities.dart';
import 'package:ostello/widgets/verified_banner.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            const Image(
              image: AssetImage('assets/images/hero_img.png'),
            ),
            Positioned(
              top: 20,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Color(0xff374BFE),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            'Verified',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          Image(
                            height: 30,
                            image:
                                AssetImage('assets/images/verified_logo.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0xffE0FFEF),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              width: 2,
                              color: const Color(0xff00D566),
                            )),
                        child: const Text(
                          'Following',
                          style: TextStyle(
                            color: Color(0xff00D566),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(width: 3),
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(9999)),
                          ),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.bookmark_border,
                            color: Color(0xff7E24E1),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 30, left: 20),
          child: Text(
            'Akash Institute',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Text(
            'Aakash offers courses for medical, and engineering entrance exams and scholarship exams such as NEET, JEE, Olympiads, NTSE and NSEs. You can take admission in one-year, two-year, three-year or four-year courses.',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
          ),
        ),
        const Amenities(),
        const VerifiedBanner()
      ],
    );
  }
}
