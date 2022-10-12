import 'package:flutter/material.dart';

Widget carServicesCategory(
    {String? image = '',
    String? name,
    double? height,
    double? width,
    bool? icontrue = false,
    FontWeight fontWeight = FontWeight.bold,
    double? fontSize = 18,
    Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      width: width,
      height: height,
      child: Row(
        children: [
          icontrue == true
              ? Image(
                  image: AssetImage('$image'),
                )
              : Container(),
          const SizedBox(
            width: 100,
          ),
          Text(
            '$name',
            style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
          ),
        ],
      ),
    ),
  );
}
