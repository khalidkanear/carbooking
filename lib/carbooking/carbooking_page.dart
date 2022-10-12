import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/carbooking/car_service_page.dart';
import 'package:untitled/carbooking/homepage.dart';
import 'package:untitled/carbooking/spareaprts_category.dart';

import '../widgets/carservice_category.dart';

class CarBooking extends StatelessWidget {
  const CarBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.1,
              image: AssetImage('assets/geely.webp'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 80,
                backgroundImage: AssetImage('assets/logo.png'),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: carServicesCategory(
                  icontrue: true,
                  image: 'assets/sports-car.png',
                  name: 'Car Bookings',
                  height: 50,
                  onTap: () {
                    Get.to(() => HomeScreen());
                    debugPrint('1');
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: carServicesCategory(
                  icontrue: true,
                  image: 'assets/car.png',
                  name: 'Car Services',
                  height: 50,
                  onTap: () {
                    Get.to(() => CarServicesPage());
                    debugPrint('2');
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: carServicesCategory(
                  icontrue: true,
                  image: 'assets/piston.png',
                  name: 'Buy Parts',
                  height: 50,
                  onTap: () {
                    Get.to(() => const SparePartspage());
                  },
                ),
              ),
            ],
          )),
    );
  }
}
