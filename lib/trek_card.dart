import 'package:flutter/material.dart';

class TrekCard extends StatelessWidget {
  final String trekName;
  final String trekLocation;
  final String trekImageSrc;

  const TrekCard({
    super.key,
    required this.trekName,
    required this.trekLocation,
    required this.trekImageSrc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(trekImageSrc),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        gradient: const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.blue, Colors.white],
        ),
      ),
      alignment: Alignment.bottomLeft,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.withOpacity(0.5), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                trekName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_pin,
                    color: Colors.white,
                    size: 16,
                  ),
                  Text(
                    trekLocation,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
