import 'package:flutter/material.dart';
import 'package:ui_2/constant.dart';
import 'package:ui_2/home_screen.dart';
import 'package:ui_2/widget/list_view.dart';
import 'package:ui_2/widget/row_today.dart';
import 'package:ui_2/widget/weather.dart';
import 'package:ui_2/widget/custom_column.dart';

import 'light_rain.dart';

class Clear extends StatefulWidget {
  const Clear({super.key});

  @override
  State<StatefulWidget> createState() => _Clear();
}

class _Clear extends State<Clear> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0.0,
        // hide button navigate
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // image profile
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/profile.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/pin.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton(
                          // notice error
                          value: Constant.citi,
                          onChanged: (newCiti) {
                            setState(() {
                              Constant.citi = newCiti!;
                            });
                            switch (newCiti) {
                              case 'Delhi':
                                {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (
                                          context) => const LightRain()));
                                  break;
                                }
                              case 'London':
                                {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (
                                          context) => const HomeScreen()));
                                  break;
                                }
                            }
                          },
                          items: Constant.cities
                              .map((citi) => DropdownMenuItem(
                              value: citi, child: Text(citi)))
                              .toList(),
                          icon: const Icon(Icons.keyboard_arrow_down),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Constant.citi,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Monday, 2 May',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(
              height: 50,
            ),
            weather('16', 'clear', 'Clear'),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  custom("Wind speed", "windspeed", "6 km/h"),
                  custom("Humidity", "humidity", "28"),
                  custom("Max Temp", "max-temp", "42C")
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            rowToday(),
            const SizedBox(
              height: 10,
            ),
            const Expanded(child: ListViewCustom())
          ],
        ),
      ),
    );
  }

}