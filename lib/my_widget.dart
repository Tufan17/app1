import 'package:flutter/material.dart';
class MyWidget extends StatelessWidget {
  final Color renk;
  final Function onPress;
  Widget child;
  MyWidget({this.renk=Colors.white,this.child,this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin:EdgeInsets.all(12.5),
        decoration: (BoxDecoration(borderRadius: BorderRadius.circular(10.0),
          color: renk,
        )),
      ),
    );
  }
}
