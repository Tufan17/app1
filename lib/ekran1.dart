import 'package:c/costants.dart';
import 'package:c/user_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_cinsiyet.dart';
import 'package:c/Sonuc.dart';
import 'my_widget.dart';
import 'user_data.dart';
class ekran1 extends StatefulWidget {
  @override
  _ekran1State createState() => _ekran1State();
}

class _ekran1State extends State<ekran1> {
  String seciliCinsiyet;
  double icilensigara=0;
  double yapilanSpor=0;
  int boy=170;
  int kilo=60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yaşam Beklentisi",
         style: TextStyle(color: Colors.black),
       ),
        centerTitle: true,
      ),
      body: Column (
        children: <Widget>[

          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: MyWidget(
                    child: Row(
                      children:<Widget>[
                        Expanded(
                          child: RotatedBox(
                            child:Text("BOY",
                            style:Kmetin
                            ),
                            quarterTurns: -1,
                          ),
                        ),
                        Expanded(
                          child: RotatedBox(
                              child: Text(boy.toString(),  style: kMetin),
                              quarterTurns: -1,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget> [
                              ButtonTheme(
                                minWidth:36,
                                child: OutlineButton(
                                  child:Icon(
                                    FontAwesomeIcons.plus,
                                    size: 10,
                                  ),
                                    onPressed:(){
                                    setState(() {
                                      boy++;
                                    });
                                    }
                                ),
                              ),
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlineButton(
                                    child:Icon(
                                      FontAwesomeIcons.minus,
                                      size: 10,
                                    ),
                                    onPressed:(){
                                     setState(() {
                                       boy--;
                                     });
                                    }
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: MyWidget(
                    child: Row(
                      children:<Widget>[
                        Expanded(
                          child: RotatedBox(
                            child:Text("KİLO",
                                style:Kmetin
                            ),
                            quarterTurns: -1,
                          ),
                        ),
                        Expanded(
                          child: RotatedBox(
                            child: Text(kilo.toString(),  style: kMetin),
                            quarterTurns: -1,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget> [
                              ButtonTheme(
                                minWidth:36,
                                child: OutlineButton(
                                    child:Icon(
                                      FontAwesomeIcons.plus,
                                      size: 10,
                                    ),
                                    onPressed:(){
                                      setState(() {
                                        kilo++;
                                      });
                                    }
                                ),
                              ),
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlineButton(
                                    child:Icon(
                                      FontAwesomeIcons.minus,
                                      size: 10,
                                    ),
                                    onPressed:(){
                                      setState(() {
                                        kilo--;
                                      });
                                    }
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: MyWidget(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        Text("Günde Kaç Sigara İçiyorsun?",
                            style: TextStyle(
                            color: Colors.black45,
                            fontWeight:FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(icilensigara.round().toString(),
                          style: TextStyle(
                            color:Colors.red,
                            fontSize: 20,
                          ),
                        ),
                        Slider(
                          min: 0,
                          max: 16,
                          value: icilensigara,
                          onChanged: (double newValue){
                           setState(() {
                             icilensigara=newValue;
                           });
                          },

                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: MyWidget(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        Text("Haftada Kaç Gün Spor Yapıyorsun?",
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight:FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(yapilanSpor.round().toString(),
                        style: TextStyle(
                          color:Colors.blue,
                          fontSize: 20,
                        ),
                        ),
                        Slider(
                          min: 0,
                          max: 7,
                          divisions: 7,
                          value: yapilanSpor,
                          onChanged: (double newValue){
                            setState(() {
                              yapilanSpor=newValue;
                            });
                          },

                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child:MyWidget(
                    onPress: (){
                      setState(() {
                      seciliCinsiyet="KADIN";
                      });
                    },
                    renk: seciliCinsiyet=="KADIN"?Colors.blue[100]:Colors.white,
                    child:IconCinsiyet(
                      icon:FontAwesomeIcons.venus,
                      cinsiyet: "KADIN",
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child:MyWidget(
                    onPress: (){
                      setState(() {
                        seciliCinsiyet="ERKEK";
                      });
                    },
                    renk: seciliCinsiyet=="ERKEK"?Colors.blue[100]:Colors.white,
                    child:IconCinsiyet(
                      icon:FontAwesomeIcons.mars,
                      cinsiyet: "ERKEK",
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtonTheme(
            minWidth: 500,
            height: 50,
            child: FlatButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Sonuc(
                  UserData(
                    kilo: kilo,
                    boy: boy,
                    icilensigara: icilensigara,
                    seciliCinsiyet: seciliCinsiyet,
                    yapilanSpor: yapilanSpor,
                  ),
                ),));
              },
              color: Colors.white,
                child: Text("Hesapla",
                style: kmetin,),
            ),
          ),
        ],
      )
    );
  }
}
