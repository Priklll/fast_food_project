import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_container/neumorphic_container.dart';

class BasicLoginSignPage extends StatefulWidget {
  const BasicLoginSignPage({Key? key}) : super(key: key);

  @override
  State<BasicLoginSignPage> createState() => _BasicLoginSignPageState();
}

class _BasicLoginSignPageState extends State<BasicLoginSignPage> {
  late bool login;
  late bool sign;

  @override
  void initState() {
    login = true;
    sign = false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Neumorphic(
                margin: EdgeInsets.only(bottom: 15),
                style: NeumorphicStyle(
                    depth: 5,
                    color: Color(0xffF2F2F2),
                    lightSource: LightSource.top,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)))),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,),
                  child: Stack(children: <Widget>[
                    Align(alignment: Alignment.center, child: Image.asset('assets/LogSign/logo.png'),),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(left: 50, right: 50),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      setState((){
                                        if (login == false){
                                           login = true;
                                           sign = false;
                                        }
                                      });
                                     },
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Login',
                                        style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ), const SizedBox(height: 5,),
                                  Container(width: 134, height: 3,
                                    decoration: BoxDecoration( color: login ? Color(0xffFA4A0C) : Colors.white, borderRadius: BorderRadius.circular(20)),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () { setState((){
                                      if (sign == false){
                                        sign = true;
                                        login = false;
                                      }
                                    });},
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Sign-up',
                                        style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(color: sign ? Color(0xffFA4A0C) : Colors.white, borderRadius: BorderRadius.circular(20)),
                                    width: 134,
                                    height: 3,

                                  )
                                ],
                              ),
                            ],),),),
                  ],),
                ),
              )),
          Expanded(
              flex: 3,
              child: Container(
                color: Color(0xffF2F2F2),
              )),
        ],),);
  }
}
