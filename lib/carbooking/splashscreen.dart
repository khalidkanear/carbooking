import 'package:untitled/carbooking/signup_page.dart';
import 'package:untitled/import.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), (() => Get.to(() => SignUp())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: 0.1,
          image: AssetImage('assets/geely.webp'),
          fit: BoxFit.fill,
        ),
      ),
      child: const Align(
        alignment: Alignment.center,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 80,
          backgroundImage: AssetImage('assets/logo.png'),
        ),
      ),
    );
  }
}

Widget categories(
    {String? image = '',
    String? name,
    double? height,
    double? width,
    bool? icontrue = false,
    FontWeight fontWeight = FontWeight.normal,
    double? fontSize = 14,
    Function()? onTap}) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        image != ''
            ? GestureDetector(
                onTap: onTap,
                child: PhysicalModel(
                  shadowColor: Colors.blue,
                  elevation: 2,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Image(
                    height: 30,
                    width: 100,
                    image: AssetImage('$image'),
                    color: Colors.black,
                  ),
                ),
              )
            : Container(),
        const SizedBox(
          height: 5,
        ),
        Text(
          name ?? ''.toUpperCase(),
          style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
        )
      ],
    ),
  );
}
