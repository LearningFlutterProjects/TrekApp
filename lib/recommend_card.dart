import 'package:flutter/material.dart';

class RecommendCard extends StatelessWidget {
  // final String trekName;
  // final String trekLocation;
  // final String trekImageSrc;

  const RecommendCard({
    super.key,
    // required this.trekName,
    // required this.trekLocation,
    // required this.trekImageSrc,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          // First widget
          Container(
            width: 0.75 * MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.white, Color.fromARGB(255, 229, 238, 244)],
              ),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80',
                    fit: BoxFit.contain,
                    height: 60,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hampta Pass Trek, Manali',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Manali, Himachal Pradesh, India',
                      style: TextStyle(
                        color: Color.fromARGB(255, 135, 135, 135),
                        fontSize: 11,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          // Second widget (overlapping)
          Positioned(
            right: 0,
            height: 45,
            // width: 100,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 45, 112, 166),
                ),
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Text(
                    'View More',
                    style: TextStyle(fontSize: 12),
                  ),
                  Icon(
                    Icons.arrow_right,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
