import 'package:shared_preferences/shared_preferences.dart';

Future<void> setOnBoardingTrue() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('seenOnBoarding', true);
}

Future<void> setOnBoardingFalse() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('seenOnBoarding', true);
}
