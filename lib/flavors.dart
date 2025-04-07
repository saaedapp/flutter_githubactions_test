import 'package:flutter/material.dart';

enum Flavor {
  testing,
  staging,
  production,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static Color get backgroundColor{
    switch (appFlavor) {
      case Flavor.testing:
        return Colors.red;
      case Flavor.staging:
        return Colors.blue;
      case Flavor.production:
        return Colors.green;
    }
  }

  static String get title {
    switch (appFlavor) {
      case Flavor.testing:
        return 'Apple test';
      case Flavor.staging:
        return 'Apple staging';
      case Flavor.production:
        return 'Apple';
    }
  }

}
