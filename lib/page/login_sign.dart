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
              flex: 3,
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
                    Align(alignment: Alignment.center, child: Image.asset('assets/LogSign/logo.png', scale: 1.3,),),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                            children: [
                              const Spacer(),
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

                                  ),
                                ],
                              ),  const Spacer(),
                            ],),),
                  ],),
                ),
              )),
          Expanded(
              flex: 6,
              child: login ? Login() : Container()),
        ],
      ),
    );
  }

  Widget Login () {
    return Column(
      children: <Widget>[
        const Spacer(),
        ///                 ///
        /// Login TextField ///
        ///                 ///
        Neumorphic(
          // margin: EdgeInsets.only(left: 25, right: 25),
          style: NeumorphicStyle(
              depth: 3,
              color: Colors.white,
              lightSource: LightSource.top,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
          child: Container(
            width: 290,
            height: 55,
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              // controller: _controllerEmail,
              // onSubmitted: _changeEmail,
              // onChanged: _changeEmail,
              decoration: InputDecoration(
                labelText: 'Username, Mobile Number',
                labelStyle: const TextStyle(fontSize: 16, color: Color(0xffA0A0A0), fontFamily: 'Nunito'),
                fillColor: Colors.white,
                filled: true,
              ),
              style: const TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Nunito'),
            ),
          ),
        ),
        const Spacer(),
        ///                    ///
        /// Password TextField ///
        ///                    ///
        Neumorphic(
          // margin: EdgeInsets.only(left: 25, right: 25),
            style: NeumorphicStyle(
                depth: 3,
                color: Colors.white,
                lightSource: LightSource.top,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
            child: Container(
              width: 290,
              height: 55,
              child: TextFormField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                // controller: _controllerEmail,
                // onSubmitted: _changeEmail,
                // onChanged: _changeEmail,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(fontSize: 16, color: Color(0xffA0A0A0), fontFamily: 'Nunito'),
                  fillColor: Colors.white,
                  filled: true,
                ),
                style: const TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Nunito'),
              ),
            )), const Spacer(),
        Text('Forgot password?', style: TextStyle(fontSize: 14, color: Color(0xffFA4A0C), fontFamily: 'Poppins', fontWeight: FontWeight.w600),),
        const Spacer(),
        ///              ///
        /// Login Button ///
        ///              ///
        NeumorphicButton(
          onPressed: () {
          },
          style: NeumorphicStyle(
            color: Color(0xffF8774A),
            depth: 3,
            shape: NeumorphicShape.concave,
            lightSource: LightSource.top,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
          ),
          padding: const EdgeInsets.all(12.0),
          child: Container(
            alignment: Alignment.center,
            width: 280,
            height: 30,
            child: Text(
              'Login',
              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
            ),
          ),
        ), const Spacer(),
        Text('Or', style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w600),),
        const Spacer(),
        ///              ///
        /// Facebook Button ///
        ///              ///
        NeumorphicButton(
          onPressed: () {},
          style: NeumorphicStyle(
            color: Color(0xff1877F2),
            depth: 3,
            shape: NeumorphicShape.concave,
            lightSource: LightSource.top,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
          ),
          padding: const EdgeInsets.all(12.0),
          child: Container(
            alignment: Alignment.center,
            width: 280,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/LogSign/Facebook_logo.png'),
                const SizedBox(width: 5,),
                const Text(
                  'Log In with Facebook',
                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
                ),
              ],),
          ),
        ),
        const Spacer(),
        ///              ///
        /// Google Button ///
        ///              ///
        NeumorphicButton(
          onPressed: () {},
          style: NeumorphicStyle(
            color: Colors.white,
            depth: 3,
            shape: NeumorphicShape.concave,
            lightSource: LightSource.top,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
          ),
          padding: const EdgeInsets.all(12.0),
          child: Container(
            alignment: Alignment.center,
            width: 280,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/LogSign/Google_logo.png'),
                const SizedBox(width: 5,),
                const Text(
                  'Log In with Google',
                  style: TextStyle(fontSize: 20, color: Color.fromRGBO(0, 0, 0, 0.54), fontWeight: FontWeight.w600, fontFamily: 'Roboto'),
                ),
              ],),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
