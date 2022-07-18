import 'package:fastfood/source/data_source.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  DataSource dataSource = DataSource();

  late Material materialButton;
  late int index;

  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(

        decoration: BoxDecoration(
          color: Color(0xB2DB2424),
          border: Border.all(
            width: 0.0,
            color: Color.fromRGBO(255, 75, 58, 100),
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                Image.asset('assets/Onboarding/logo.png', scale: 2.5,),
                Text('Save Food with our new Feature!',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 14,
                        ))
              ],
            ),
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                child: Image.asset('assets/images/twitter.png',
                    color: pageImageColor),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'CHANGE AND RISE',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Give others access to any file or folders you choose',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                child: Image.asset('assets/images/instagram.png',
                    color: pageImageColor),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'EASY ACCESS',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Reach your files anytime from any devices anywhere',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xB2DB2424),
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
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Expanded(
                    flex: 3,
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
      ),
    );
  }
}