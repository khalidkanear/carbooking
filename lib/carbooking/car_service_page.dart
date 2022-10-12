import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/carbooking/customdrawer.dart';
import 'package:untitled/carbooking/profile_page.dart';
import 'package:untitled/carbooking/splashscreen.dart';
import 'package:untitled/widgets/category_view_widget.dart';

class CarServicesPage extends StatelessWidget {
  CarServicesPage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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

                        //  child: Drawer(backgroundColor: Colors.red),
                        //));
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
                                  name: 'CAR BOOKING',
                                  image: 'assets/sports-car.png',
                                  onTap: () {
                                    debugPrint('2323');
                                    Get.to(() => CarServicesPage());
                                  }),
                              const SizedBox(
                                width: 5,
                              ),
                              categories(
                                  name: 'CAR SERVICES',
                                  image: 'assets/car.png'),
                              const SizedBox(
                                width: 5,
                              ),
                              categories(
                                  name: 'BUY PARTS', image: 'assets/piston.png')
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
                            shrinkWrap: true,
                            itemCount: 7,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: categoryView(iscarbook: true),
                              );
                            }),
                      ),
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
