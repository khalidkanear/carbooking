import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CarDetailPage extends StatelessWidget {
  @override
  const CarDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      decoration: const BoxDecoration(
        color: Color(0xff1e3161),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    onTap: () => Get.back(),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.fill,
                      height: 70,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Proton X70',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(left: 4),
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/emgrand2.png'),
                  ),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  //Dot display row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.brown,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(radius: 12, backgroundColor: Colors.black),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(radius: 12, backgroundColor: Colors.black12),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Vehicle Information',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

//row for details icon

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/generator.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          Text('Power'),
                        ],
                      ),
                      Column(
                        children: const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/meter.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          Text('Speed'),
                        ],
                      ),
                      Column(
                        children: const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/deadline.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          Text('Acceleration'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
//Row for Circular progress indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          CircularPercentIndicator(radius: 27),
                          const Text('450\n hp'),
                        ],
                      ),
                      Column(
                        children: [
                          CircularPercentIndicator(radius: 27),
                          const Text('150\n Kph'),
                        ],
                      ),
                      Column(
                        children: [
                          CircularPercentIndicator(radius: 27),
                          const Text('4.50\n sec'),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Center(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Book'),
                            Icon(Icons.double_arrow),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
