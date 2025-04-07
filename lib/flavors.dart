import 'package:flutter/material.dart';

enum Flavor {
  test,
  staging,
  production,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static Color get backgroundColor {
    switch (appFlavor) {
      case Flavor.test:
        return Colors.red;
      case Flavor.staging:
        return Colors.blue;
      case Flavor.production:
        return Colors.green;
    }
  }

  static String get title {
    switch (appFlavor) {
      case Flavor.test:
        return 'Apple test';
      case Flavor.staging:
        return 'Apple staging';
      case Flavor.production:
        return 'Apple';
    }
  }

}
