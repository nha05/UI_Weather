import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_2/widget/custom_column.dart';
import 'package:ui_2/widget/list_view.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<StatefulWidget> createState() => _Detail();
}

class _Detail extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: true,
          backgroundColor: Colors.blue,
          title: const Text(
            'Berlin',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          elevation: 0.0,
          // bong cua appbar
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
        body: Container(
          color: Colors.blue,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: 10,
                  left: 10,
                  child: SizedBox(
                      width: size.width,
                      height: 150,
                      child: const ListViewCustom())),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  height: size.height * 0.55,
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: Colors.tealAccent,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      )),
                  // child: ,
                ),
              ),
              Positioned(
                left: 18,
                bottom: 0,
                child: SizedBox(
                  height: 150,
                  width: size.width * 0.9,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        late List<DateTime> days = List.generate(
                          6, // 1 week
                          (index) => DateTime.now().add(
                            Duration(days: index + 1),
                          ),
                        );
                        final List<String> images = [
                          "snow",
                          'clear',
                          'hail',
                          'heavycloud',
                          'heavyrain',
                          'lightcloud',
                          'lightrain',
                          'showers',
                          'thunderstorm'
                        ];
                        images.shuffle();
                        var i = Random().nextInt(8);
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          margin: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white.withOpacity(.2),
                                  offset: const Offset(0, 2),
                                  blurRadius: 10)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  index == 0
                                      ? DateFormat('d MMM, EEEE')
                                          .format(DateTime.now())
                                      : DateFormat('d MMM, EEEE')
                                          .format(days[index]),
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${Random().nextInt(40) + 15}/',
                                      style: const TextStyle(
                                          color: Colors.amber, fontSize: 20),
                                    ),
                                    Text(
                                      '${Random().nextInt(14) - 20}',
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/${images[i]}.png',
                                      width: 10,
                                    ),
                                    Text(images[i],
                                        style: const TextStyle(fontSize: 7))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Positioned(
                top: 270,
                left: 5,
                right: 5,
                child: SizedBox(
                  height: size.height * 0.55,
                  width: size.width,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -50,
                        right: 20,
                        left: 20,
                        child: Container(
                          width: size.width * 0.7,
                          height: 230,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
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
                              const Positioned(
                                  right: 20,
                                  top: 40,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '19',
                                        style: TextStyle(
                                            fontSize: 60,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'o',
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                              ),
                              Positioned(
                                top: -40,
                                left: 20,
                                child: Image.asset(
                                  'assets/images/showers.png',
                                  width: 120,
                                ),
                              ),
                              const Positioned(
                                  top: 100,
                                  left: 20,
                                  child: Text(
                                    'Showers',
                                    style: TextStyle(fontSize: 20, color: Colors.white),
                                  )
                              ),
                              Positioned(
                                bottom: 20,
                                left: 20,
                                child: Container(
                                  width: size.width*0.8,
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      custom("", "windspeed", "7 km/h"),
                                      custom("", "humidity", "65"),
                                      custom("", "max-temp", "17C")
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
