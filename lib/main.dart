import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';
import 'flavors.dart';

void main() {
  F.appFlavor = Flavor.production;

  runApp(const App());
}
