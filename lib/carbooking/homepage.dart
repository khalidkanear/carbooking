import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:untitled/carbooking/car_service_page.dart';
import 'package:untitled/carbooking/carbooking_details_page.dart';
import 'package:untitled/carbooking/customdrawer.dart';
import 'package:untitled/carbooking/profile_page.dart';
import 'package:untitled/carbooking/spareaprts_category.dart';

import 'package:untitled/carbooking/splashscreen.dart';
import 'package:untitled/widgets/category_view_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final double value = 3.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: customDrawer(),
      body: Material(
        //key: _drawerKey,
        elevation: 2,
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xff1e3161),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _drawerKey.currentState?.openDrawer();
                      },
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Car Booking',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: (() => Get.to(() => const ProfilePage())),
                      child: const CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height - 102,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              categories(
                                onTap: () {
                                  debugPrint('2323');
                                  Get.to(() => HomeScreen());
                                },
                                name: 'CAR BOOKING',
                                image: 'assets/sports-car.png',
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              categories(
                                  onTap: () {
                                    debugPrint('2');
                                    Get.to(() => CarServicesPage());
                                  },
                                  name: 'CAR SERVICES',
                                  image: 'assets/car.png'),
                              const SizedBox(
                                width: 5,
                              ),
                              categories(
                                name: 'BUY PARTS',
                                image: 'assets/piston.png',
                                onTap: () =>
                                    Get.to(() => const SparePartspage()),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  onTap: () {
                                    Get.to(() => const CarDetailPage());
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: categoryView(iscarbook: false),
                                  ));
                            }),
                      ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
