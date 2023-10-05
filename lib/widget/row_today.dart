import 'package:flutter/material.dart';

Row rowToday() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text('Today',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20 ),),
      Text('Next 7 Days', style: TextStyle(fontSize: 15, color: Colors.blueGrey, fontWeight: FontWeight.w600),)
    ],
  );
}