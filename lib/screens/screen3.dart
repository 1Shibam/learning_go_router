import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning_go_router/preferences/log_in_preference.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              'you are logged in!!',
              style: TextStyle(fontSize: 60),
            ),
            ElevatedButton(
                onPressed: () {
                  loggedOut();
                  context.go('/screen2');
                },
                child: const Text('log out now!'))
          ],
        ),
      ),
    );
  }
}
