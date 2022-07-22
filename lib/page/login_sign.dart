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
  late bool loginForgot;

  @override
  void initState() {
    login = true;
    sign = false;
    loginForgot = true;
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
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/LogSign/logo.png',
                          scale: 1.3,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            const Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (login == false) {
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
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 134,
                                  height: 3,
                                  decoration: BoxDecoration(color: login ? Color(0xffFA4A0C) : Colors.white, borderRadius: BorderRadius.circular(20)),
                                )
                              ],
                            ),
                            const Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (sign == false) {
                                        sign = true;
                                        login = false;
                                      }
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      'Sign-up',
                                      style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.bold),
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
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(flex: 6, child: openWidget()),
        ],
      ),
    );
  }

  Widget openWidget() {
    if (sign == true) {
      return Sign();
    } else if (loginForgot == true) {
      return ForgotPassword();
    } else {
      return Login();
    }
  }

  Widget Login() {
    return Column(
      children: <Widget>[
        const Spacer(),

        ///                 ///
        /// Login TextField ///
        ///                 ///
        Neumorphic(
          // margin: EdgeInsets.only(left: 25, right: 25),
          style: NeumorphicStyle(
              depth: 3, color: Colors.white, lightSource: LightSource.top, boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
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
                depth: 3, color: Colors.white, lightSource: LightSource.top, boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
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
            )),
        const Spacer(),
        Row(children: [
          const Spacer(),
            GestureDetector(
              onTap: () {
                setState((){
                  loginForgot = true;
                });
              },
              child: Text(
                'Forgot password?',
                style: TextStyle(fontSize: 14, color: Color(0xffFA4A0C), fontFamily: 'Poppins', fontWeight: FontWeight.w600),
              ),
            ),
            const Spacer(flex: 4),
          ],),
        const Spacer(),

        ///              ///
        /// Login Button ///
        ///              ///
        NeumorphicButton(
          onPressed: () {},
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
        ),
        const Spacer(),
        Row(
          children: [
            const Spacer(),
            Text(
              'Or',
              style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w600),
            ),
            const Spacer(),
          ],
        ),
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
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Log In with Facebook',
                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
                ),
              ],
            ),
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
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Log In with Google',
                  style: TextStyle(fontSize: 20, color: Color.fromRGBO(0, 0, 0, 0.54), fontWeight: FontWeight.w600, fontFamily: 'Roboto'),
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }

  Widget Sign() {
    return Column(
      children: <Widget>[
        const Spacer(),
        Row(
          children: [
            const Spacer(
              flex: 2,
            ),
            Text('Register', style: TextStyle(fontFamily: 'Nunito', fontSize: 36, fontWeight: FontWeight.bold, color: Color(0xffF8774A))),
            const Spacer(),

            /// Google ///
            ///
            NeumorphicButton(
              onPressed: () {},
              style: NeumorphicStyle(
                color: Colors.white,
                depth: 3,
                shape: NeumorphicShape.concave,
                lightSource: LightSource.top,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
              ),
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.center,
                width: 25,
                height: 25,
                child: Image.asset(
                  'assets/LogSign/Google_logo.png',
                  scale: 0.8,
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),

            /// Facebook ///
            ///
            NeumorphicButton(
              onPressed: () {},
              style: NeumorphicStyle(
                color: Colors.white,
                depth: 3,
                shape: NeumorphicShape.concave,
                lightSource: LightSource.top,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
              ),
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.center,
                width: 25,
                height: 25,
                child: Image.asset(
                  'assets/LogSign/logos_facebook.png',
                  scale: 0.8,
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
        const Spacer(),

        /// Name ///
        ///
        ///
        Neumorphic(
          // margin: EdgeInsets.only(left: 25, right: 25),
          style: NeumorphicStyle(
              depth: 3, color: Colors.white, lightSource: LightSource.top, boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
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
                labelText: 'Full Name',
                labelStyle: const TextStyle(fontSize: 16, color: Color(0xffA0A0A0), fontFamily: 'Nunito'),
                fillColor: Colors.white,
                filled: true,
              ),
              style: const TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Nunito'),
            ),
          ),
        ),
        const Spacer(),

        /// Mobile Number ///
        ///
        ///
        Neumorphic(
          // margin: EdgeInsets.only(left: 25, right: 25),
          style: NeumorphicStyle(
              depth: 3, color: Colors.white, lightSource: LightSource.top, boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
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
                labelText: 'Mobile Number',
                labelStyle: const TextStyle(fontSize: 16, color: Color(0xffA0A0A0), fontFamily: 'Nunito'),
                fillColor: Colors.white,
                filled: true,
              ),
              style: const TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Nunito'),
            ),
          ),
        ),
        const Spacer(),

        /// Password ///
        ///
        ///
        Neumorphic(
          // margin: EdgeInsets.only(left: 25, right: 25),
          style: NeumorphicStyle(
              depth: 3, color: Colors.white, lightSource: LightSource.top, boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
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
          ),
        ),
        const Spacer(),

        /// Confirm Password ///
        ///
        ///
        Neumorphic(
          // margin: EdgeInsets.only(left: 25, right: 25),
          style: NeumorphicStyle(
              depth: 3, color: Colors.white, lightSource: LightSource.top, boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
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
                labelText: 'Confirm Password',
                labelStyle: const TextStyle(fontSize: 16, color: Color(0xffA0A0A0), fontFamily: 'Nunito'),
                fillColor: Colors.white,
                filled: true,
              ),
              style: const TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Nunito'),
            ),
          ),
        ),
        const Spacer(),

        /// Button Sign-Up ///
        ///
        ///
        Row(
          children: <Widget>[
            const Spacer(
              flex: 2,
            ),
            NeumorphicButton(
              onPressed: () {},
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
                width: 140,
                height: 30,
                child: Text(
                  'Sign-up',
                  style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: 50,
              width: 130,
              child: RichText(
                maxLines: 4,
                text: TextSpan(style: TextStyle(fontSize: 16, color: Color.fromRGBO(179, 179, 179, 1), fontFamily: 'Nunito'), children: [
                  TextSpan(text: 'Already a Member?', style: TextStyle(fontWeight: FontWeight.w400)),
                  TextSpan(text: ' Login', style: TextStyle(fontWeight: FontWeight.w700)),
                ]),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }

  Widget ForgotPassword() {
    return
      Padding(
      padding: EdgeInsets.only(left: 40),
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Spacer(flex: 2,),
          GestureDetector(
            onTap: () {
              setState(() {
                loginForgot = false;
              });
            },
            child: Image.asset(
              'assets/LogSign/arrow_back.png',
              scale: 0.8,
            ),
          ),
           const Spacer(flex: 2,),
          Text('Forgot', style: TextStyle(fontFamily: 'Nunito', fontSize: 36, fontWeight: FontWeight.bold, color: Color(0xffF8774A))),
          
          Text('password?', style: TextStyle(fontFamily: 'Nunito', fontSize: 36, fontWeight: FontWeight.bold, color: Color(0xffF8774A))),
          const Spacer(flex: 2,),
          Neumorphic(
            // margin: EdgeInsets.only(left: 25, right: 25),
            style: NeumorphicStyle(
                depth: 3, color: Colors.white, lightSource: LightSource.top, boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
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
                prefixIcon: Image.asset('assets/LogSign/Mail.png'),
                prefixIconColor: Color(0xff626262),
                labelText: 'Enter your email address',
                labelStyle: const TextStyle(fontSize: 12, color: Color(0xff676767), fontFamily: 'Gilroy'),
                fillColor: Colors.white,
                filled: true,
              ),
              style: const TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Nunito'),
              ),
            ),
          ),
          const Spacer(),
          Container(width: 240,
            height: 55, child: Image.asset('assets/LogSign/text.png', scale: 1.1,),),
          const Spacer(),
          Text('Send code', style: TextStyle(fontFamily: 'Gilroy', fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xffB2B2B2))),
          const Spacer(),
          Row(
            children: <Widget>[
            const Spacer(flex: 5,),
            NeumorphicButton(
              onPressed: () {},
              style: NeumorphicStyle(
                color: Color(0xffF8774A),
                shadowDarkColor: Color(0xffF8774A),
                depth: 4,
                shape: NeumorphicShape.flat,
                lightSource: LightSource.top,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
              ),
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.center,
                width: 30,
                height: 30,
                child: Image.asset('assets/LogSign/Arrow.png')
              ),
            ), const Spacer(),
          ],),const Spacer(flex: 2,),
        ],
      ),
    );
  }
}
