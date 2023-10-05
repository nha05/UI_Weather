import 'package:flutter/material.dart';

Container custom(String name, String image, String number) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name, style: const TextStyle(fontSize: 10, color: Colors.black45),),
        const SizedBox(height: 5,),
        Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Image.asset('assets/images/$image.png'),
        ),
        const SizedBox(height: 5,),
        Text(number, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
      ],),
  );
}