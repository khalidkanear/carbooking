

import 'package:flutter/material.dart';

class CustumButton extends StatelessWidget {

  final Widget? child;
  final Function()? onPressed;
  final Color? primaryColor;
  final ShapeBorder? shape;
  final Color? disableColor;
  IconData ?icon;

   CustumButton({
     required this.child,
     required this.onPressed,
     this. primaryColor,
     this.shape,
     this.disableColor,
     this.icon,
     Key? key,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape:shape ,
      splashColor: primaryColor,
      disabledColor:disableColor ,
      child: child,
    );
  }
}
