import 'package:c/user_data.dart';

class Hesapla{
  UserData _userData;
  Hesapla(this._userData);
  double hesaplama(){
    double sonuc;
    sonuc=80+_userData.yapilanSpor-_userData.icilensigara;
    sonuc=sonuc+(_userData.boy/_userData.kilo);
    if(_userData.seciliCinsiyet=="KADIN"){
      return sonuc+3;
    }else{
      return sonuc;
    }
  }
}