import 'package:flutter/material.dart';
import 'package:flutter_githubactions_test/app_colors.dart';
import '../flavors.dart';
const String gitBranch = String.fromEnvironment('GIT_BRANCH', defaultValue: 'unknown');

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: F.backgroundColor,
      appBar: AppBar(title: Text(F.title)),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Hello from flavor: ${F.appFlavor}'),
                  Text('Hello from config : ${backgroundColor}'),
                  const Text('Hello from current branch : $gitBranch'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
