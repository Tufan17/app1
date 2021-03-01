import 'package:flutter/material.dart';
class IconCinsiyet extends StatelessWidget {
  final IconData icon;
  final String cinsiyet;
  IconCinsiyet({this.icon,this.cinsiyet});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,
          size: 50,
          color: Colors.black45,
        ),
        Text(cinsiyet,
          style: TextStyle(
            color: Colors.black45,
            fontWeight:FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
