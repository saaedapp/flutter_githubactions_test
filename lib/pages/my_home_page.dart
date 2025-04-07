import 'package:flutter/material.dart';
import '../flavors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: F.backgroundColor,
      appBar: AppBar(title: Text(F.title)),
      body: Center(child: Text('Hello ${F.appFlavor}')),
    );
  }
}
