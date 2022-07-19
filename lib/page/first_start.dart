import 'package:fastfood/source/data_source.dart';
import 'package:flutter/material.dart';

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
              gradient: LinearGradient(
                  colors: [

                    const Color(0xB2DB2424),
                    const Color(0xFFB21111),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),

              border: Border.all(
                width: 0.0,
                color: Color.fromRGBO(255, 75, 58, 100),
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
                  flex: 1,
                  child: Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: const Text('Save Food with our new Feature!',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            softWrap: true,
                            style: TextStyle(
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
                Expanded(flex: 1, child: Container())
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    const Color(0xFFB21111),
                  ],
                  begin: const FractionalOffset(0.0, 0.6),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
              border: Border.all(
              width: 0.0,
              color: Color.fromRGBO(255, 75, 58, 100),
            ),
          ), child: Padding(padding: EdgeInsets.only(bottom: 60), child: Image.asset('assets/Onboarding/botton_1.png', scale: 1,),),)
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
              gradient: LinearGradient(
                  colors: [
                    const Color(0xB2DB2424),
                    const Color(0xFFB21111),
                  ],
                  begin: const FractionalOffset(0.0, 0.6),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
              border: Border.all(
                width: 0.0,
                color: Color.fromRGBO(255, 75, 58, 100),
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
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: const Text('Set preferences for multiple users from various restaurants!',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              )),
                        )),
                  ),
                  Expanded(
                      flex: 5,
                      child: Container(
                        decoration:
                        const BoxDecoration(image: DecorationImage(image: AssetImage('assets/Onboarding/asset prefArtboard 1 1.png'), fit: BoxFit.contain)),
                      )),
                  Expanded(flex: 1, child: Container())
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      const Color(0xFFB21111),
                    ],
                    begin: const FractionalOffset(0.0, 0.6),
                    end: const FractionalOffset(0.0, 1.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
                border: Border.all(
                  width: 0.0,
                  color: Color.fromRGBO(255, 75, 58, 100),
                ),
              ), child: Padding(padding: EdgeInsets.only(bottom: 60), child: Image.asset('assets/Onboarding/bottom2.png', scale: 1,),),)
          ],)

      ),
    );
  }
}
