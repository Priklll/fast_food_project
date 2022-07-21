import 'package:fastfood/page/login_sign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        OnboardingPage1(),
        OnboardingPage2(),
        OnboardingPage3(),
      ],
    );
  }
}

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xFFFF4B3A),
              border: Border.all(
                width: 0.0,
                color: const Color.fromRGBO(255, 75, 58, 100),
              ),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/Onboarding/logo.png',
                        scale: 0.8,
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 50,
                        right: 50,
                      ),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Text('Save Food with our new Feature!',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            softWrap: true,
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                               color: Colors.white,
                              fontSize: 35,
                            )),
                      )),
                ),
                Expanded(
                    flex: 5,
                    child: Container(
                      decoration:
                      const BoxDecoration(image: DecorationImage(image: AssetImage('assets/Onboarding/pngArtboard 4 1.png'), fit: BoxFit.contain)),
                    )),
                Expanded(flex: 2, child: Container())
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [
                    // Colors.transparent,
                    Color.fromRGBO(255, 71, 11, 0.1),
                    Color.fromRGBO(255, 71, 11, 1),
                  ],
                  begin: FractionalOffset(0.0, 0.7),
                  end: FractionalOffset(0.0, 1.5),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
              border: Border.all(
              width: 0.0,
              color: const Color.fromRGBO(255, 75, 58, 100),
            ),
          ), child: Padding(padding: const EdgeInsets.only(bottom: 60), child: Image.asset('assets/Onboarding/botton_1.png', scale: 1,),),)
        ],)

      ),
    );
  }
}

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(children: [
            Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xFFFF4B3A),
              border: Border.all(
                width: 0.0,
                color: const Color.fromRGBO(255, 75, 58, 100),
              ),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          'assets/Onboarding/logo.png',
                          scale: 0.8,
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text('Set preferences for multiple users from various restaurants!',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'Metropolis',
                              )),
                        )),
                  ),
                  Expanded(
                      flex: 5,
                      child: Container(
                        decoration:
                        const BoxDecoration(image: DecorationImage(image: AssetImage('assets/Onboarding/asset prefArtboard 1 1.png'), fit: BoxFit.contain)),
                      )),
                  Expanded(flex: 2, child: Container())
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [
                      // Colors.transparent,
                      Color.fromRGBO(255, 71, 11, 0.1),
                      Color.fromRGBO(255, 71, 11, 1),
                    ],
                    begin: FractionalOffset(0.0, 0.7),
                    end: FractionalOffset(0.0, 1.5),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
                border: Border.all(
                  width: 0.0,
                  color: const Color.fromRGBO(255, 75, 58, 100),
                ),
              ), child: Padding(padding: const EdgeInsets.only(bottom: 60), child: Image.asset('assets/Onboarding/bottom2.png', scale: 1,),),)
          ],)

      ),
    );
  }
}

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration:BoxDecoration(
                color: Color(0xFFFF4B3A),
                border: Border.all(
                  width: 0.0,
                  color: const Color.fromRGBO(255, 75, 58, 100),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          'assets/Onboarding/logo.png',
                          scale: 0.8,
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text('Fast, rescued food at your service.',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,

                              maxLines: 4,
                              softWrap: true,

                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontFamily: 'Metropolis',
                              )),
                        )),
                  ),
                  Expanded(
                      flex: 5,
                      child: Container(
                        decoration:
                        const BoxDecoration(image: DecorationImage(image: AssetImage('assets/Onboarding/pngArtboard 1 1.png'), fit: BoxFit.contain)),
                      )),
                  Expanded(flex: 2, child: Container())
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [
                      // Colors.transparent,
                      Color.fromRGBO(255, 71, 11, 0.1),
                      Color.fromRGBO(255, 71, 11, 1),
                    ],
                    begin: FractionalOffset(0.0, 0.7),
                    end: FractionalOffset(0.0, 1.5),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
                border: Border.all(
                  width: 0.0,
                  color: const Color.fromRGBO(255, 75, 58, 100),
                ),
              ),
              child: Align(alignment: Alignment(0, 0.9), child:
              NeumorphicButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BasicLoginSignPage()));
                },
                style: NeumorphicStyle(
                  color: Colors.white,
                  depth: 3,
                  shape: NeumorphicShape.concave,
                  lightSource: LightSource.top,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                ),
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  alignment: Alignment.center,
                  width: 280,
                      height: 30,
                      child: Text(
                        'Get Started!',
                        style: TextStyle(fontSize: 12, color: Colors.red, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                      ),
                    ),
                  )))
        ],
      )),
    );
  }
}
