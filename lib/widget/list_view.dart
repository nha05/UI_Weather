import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_2/detail.dart';

class ListViewCustom extends StatelessWidget {
  const ListViewCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        final DateTime date = DateTime.now();
        late List<DateTime> days = List.generate(
          6, // 1 week
              (index) => DateTime.now().add(
            Duration(days: index+1),
          ),
        );

        final List<String> images = ["snow", 'clear', 'hail', 'heavycloud', 'heavyrain', 'lightcloud', 'lightrain', 'showers', 'thunderstorm'];
        images.shuffle();
        var i = Random().nextInt(8);
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Detail()));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            margin:
            const EdgeInsets.only(top: 10, right: 20, bottom: 10),
            width: 80,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              color: index == 0 ? Colors.lightBlueAccent : Colors.amber,
              boxShadow: [
                BoxShadow(
                    color: index == 0 ? Colors.lightBlueAccent.withOpacity(.2): Colors.amber.withOpacity(.2),
                    offset: const Offset(0, 2),
                    blurRadius: 10)
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${Random().nextInt(40) - 20}C', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: index == 0? Colors.amber: Colors.white),),
                Image.asset('assets/images/${images[i]}.png',width: 30,),
                Text(index == 0 ? DateFormat('EEE').format(date) : DateFormat('EEE').format(days[index]), style: TextStyle(fontSize: 15,  fontWeight: FontWeight.w600, color: index == 0? Colors.amber: Colors.white),)

              ],
            ),
          ),
        );
      },


    );
  }
}