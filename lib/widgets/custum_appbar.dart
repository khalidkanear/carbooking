import 'package:flutter/material.dart';

class AppBars extends AppBar {
  AppBars({Key? key})
      : super(
          key: key,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: const Text(
            "Your Text Here",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () => {},
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () => {},
            ),
          ],
        );
}
