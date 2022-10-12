import 'package:flutter/material.dart';

Widget drawerMenueItem({IconData? icon, String? name, Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon),
        const SizedBox(
          width: 10,
        ),
        Text(
          '$name',
          style: const TextStyle(color: Colors.black),
        ),
      ],
    ),
  );
}
