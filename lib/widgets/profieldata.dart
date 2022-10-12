import 'package:flutter/material.dart';

Widget profiledataRow({String? name, String? field, IconData? icon}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '$field',
          style: const TextStyle(color: Colors.white),
        ),
        const Spacer(),
        Text(
          '$name',
          style: const TextStyle(color: Colors.white),
        )
      ],
    ),
  );
}
