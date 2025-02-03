import 'package:shared_preferences/shared_preferences.dart';

Future<void> loggedIn() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isLoggedIn', true);
}
Future<void> loggedOut() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isLoggedIn', false);
}
