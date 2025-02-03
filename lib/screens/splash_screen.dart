import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //! instantiate some blah-blah!!
    super.initState();
    navigateToWhere();
  }

  Future<void> navigateToWhere() async {
    final pref = await SharedPreferences.getInstance();
    final bool hasSeenOnBoarding = pref.getBool('seenOnBoarding') ?? false;
    final bool isLoggedIn = pref.getBool('isLoggedIn') ?? false;

    // Debugging print
    print('hasSeenOnBoarding: $hasSeenOnBoarding, isLoggedIn: $isLoggedIn');

    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    if (!hasSeenOnBoarding) {
      context.go('/screen1');
    } else if (!isLoggedIn) {
      context.go('/screen2');
    } else {
      context.go('/screen3');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animations/fitness lottie json.json',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const Text('Loading...')
          ],
        ),
      ),
    );
  }
}
