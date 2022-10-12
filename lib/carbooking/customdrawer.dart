import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/carbooking/car_service_page.dart';
import 'package:untitled/carbooking/edit_profile.dart';
import 'package:untitled/carbooking/homepage.dart';
import 'package:untitled/carbooking/order_page.dart';
import 'package:untitled/carbooking/payment_method_slection_page.dart';
import 'package:untitled/carbooking/spareaprts_category.dart';

import '../widgets/draweritems.dart';

Widget customDrawer() {
  var style = const TextStyle(
    color: Colors.white,
    fontSize: 11,
  );
  return Container(
    decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
    width: 235,
    margin: const EdgeInsets.symmetric(vertical: 40),
    child: Drawer(
      child: Column(
        children: [
          Container(
            decoration:
                BoxDecoration(color: const Color(0xff1e3161).withOpacity(0.7)),
            height: 100,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (() => Get.to(() => const EditProfielPage())),
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.edit,
                              size: 11,
                            ),
                            Text(
                              'Edit',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Muhammad Khalid',
                              style: style,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '03049629742',
                              style: style,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'khalidshahzad@gmail.com',
                              style: style,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          drawerMenueItem(
            name: 'Home',
            icon: Icons.home,
            onTap: () {
              Get.offAll(HomeScreen());
            },
          ),
          const SizedBox(
            height: 20,
          ),
          drawerMenueItem(
              name: 'Car Booking',
              icon: Icons.car_rental_sharp,
              onTap: () {
                Get.to(() => HomeScreen());
              }),
          const SizedBox(
            height: 20,
          ),
          drawerMenueItem(
              name: 'Car Services',
              icon: Icons.car_repair,
              onTap: (() {
                Get.to(() => CarServicesPage());
              })),
          const SizedBox(
            height: 20,
          ),
          drawerMenueItem(
              name: 'Buy Parts',
              icon: Icons.carpenter_rounded,
              onTap: () {
                Get.to(() => const SparePartspage());
              }),
          const SizedBox(
            height: 20,
          ),
          drawerMenueItem(
            name: 'Orders',
            icon: Icons.receipt_long,
            onTap: () {
              Get.to(() => const OrdersPage());
            },
          ),
          const SizedBox(
            height: 20,
          ),
          drawerMenueItem(name: 'Settings', icon: Icons.settings),
          const SizedBox(
            height: 20,
          ),
          drawerMenueItem(
              name: 'Payment',
              icon: Icons.money,
              onTap: (() => Get.to(() => const PaymentMethod()))),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    ),
  );
}
