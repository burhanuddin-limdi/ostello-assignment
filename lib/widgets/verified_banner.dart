import 'package:flutter/material.dart';

class VerifiedBanner extends StatelessWidget {
  const VerifiedBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          const Image(
            width: double.infinity,
            image: AssetImage('assets/images/ostello_banner.png'),
          ),
          Positioned(
            top: 17,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image(
                          width: 20,
                          image: AssetImage('assets/images/tick_logo.png'),
                        ),
                        Text(
                          'Top-Grade Faculty',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image(
                          width: 20,
                          image: AssetImage('assets/images/tick_logo.png'),
                        ),
                        Text(
                          'Always Updated',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image(
                          width: 20,
                          image: AssetImage('assets/images/tick_logo.png'),
                        ),
                        Text(
                          'Best Value Deals',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image(
                          width: 20,
                          image: AssetImage('assets/images/tick_logo.png'),
                        ),
                        Text(
                          '4.5+ Reviews',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image(
                          width: 20,
                          image: AssetImage('assets/images/tick_logo.png'),
                        ),
                        Text(
                          'Dedicated Support',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 7.5),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                  ),
                  child: const Text(
                    'Book Free Demo with Ostello',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
