import 'package:flutter/material.dart';

Container weather(String celsius, String image, String weather) {
  return Container(
    width: double.infinity,
    height: 160,
    decoration: BoxDecoration(
      color: Colors.cyan,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
            color: Colors.cyan.withOpacity(.5),
            offset: const Offset(0, 25),
            blurRadius: 10,
            spreadRadius: -12)
      ],
    ),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
            right: 20,
            top: 40,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  celsius,
                  style: const TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'o',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )),
        Positioned(
          top: -40,
          left: 20,
          child: Image.asset(
            'assets/images/$image.png',
            width: 120,
          ),
        ),
        Positioned(
            bottom: 30,
            left: 20,
            child: Text(
              weather,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            )),
      ],
    ),
  );
}
