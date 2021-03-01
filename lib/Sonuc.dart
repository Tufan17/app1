import 'package:c/hesapla.dart';
import 'package:c/user_data.dart';
import 'package:flutter/material.dart';
import 'package:c/costants.dart';
import 'user_data.dart';
class Sonuc extends StatelessWidget {
  final UserData _userData;
  Sonuc(this._userData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Beklenen Yaşam Süresi:"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 8,

            child: Center(
              child: Text(Hesapla(_userData).hesaplama().round().toString(),
                style: kmetin,
          ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ButtonTheme(
              minWidth: 500,
              child: FlatButton(
                color: Colors.white,
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Geri Dön",style: kmetin,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
