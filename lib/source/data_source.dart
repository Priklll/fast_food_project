import 'dart:math';
import 'dart:ui' as ui;
import 'package:fastfood/assistent/models.dart';

class DataSource {
  static final DataSource _singleton = DataSource._internal();

  factory DataSource() {
    return _singleton;
  }

  DataSource._internal();

  List<OnboardingItem> listOnboardingPage = [
    OnboardingItem(src: 'assets/Onboarding/pngArtboard 4 1.png', text: 'Save Food with our new Feature!'),
    OnboardingItem(src: 'asset prefArtboard 1 1.png', text: 'Set preferences for multiple users from various restaurants!'),
    OnboardingItem(src: 'assets/Onboarding/pngArtboard 1 1.png', text: 'Fast, rescued food at your service.'),
  ];

}