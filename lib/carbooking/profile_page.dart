import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../widgets/profieldata.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(color: Color(0xff1e3161)),
        child: Stack(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 190),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const Text('Muhammad Usman'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star_sharp,
                        color: Colors.yellow.shade500,
                      ),
                      Icon(
                        Icons.star_sharp,
                        color: Colors.yellow.shade500,
                      ),
                      Icon(
                        Icons.star_sharp,
                        color: Colors.yellow.shade500,
                      ),
                      Icon(
                        Icons.star_sharp,
                        color: Colors.yellow.shade500,
                      ),
                      Icon(
                        Icons.star_sharp,
                        color: Colors.yellow.shade500,
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - 320,
                    margin: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: const Color(0xff1e3161).withOpacity(0.8),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(children: [
                      const SizedBox(
                        height: 10,
                      ),
                      profiledataRow(
                          name: 'M.usman', icon: Icons.person, field: 'Name'),
                      const SizedBox(
                        height: 10,
                      ),
                      profiledataRow(
                          name: '03049629742',
                          icon: Icons.phone_android,
                          field: 'Phone Number'),
                      const SizedBox(
                        height: 10,
                      ),
                      profiledataRow(
                          name: 'm.usman@gmail.com',
                          icon: Icons.email,
                          field: 'Email Address'),
                    ]),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.19,
              left: MediaQuery.of(context).size.width * 0.35,
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (() {
                      Get.back();
                    }),
                    child: const Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 140,
                  ),
                  const Text(
                    'Profile',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
