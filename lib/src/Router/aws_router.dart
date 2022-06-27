import 'package:awesonestyle/awesonestyle.dart';

class AwsRouter {
  static String? routeIsDeviceName({
    required double shortestSide,
    bool isTablet = false,
    required bool isPhone,
    bool isWeb = false,
    required String routePhone,
    String? routeTablet,
    String? routeWeb,
  }) {
    if (isPhone || isTablet || isWeb) {
      if (isPhone) {
        if (GetPlatform.isMobile) {
          if (shortestSide < 600) {
            return routePhone;
          }
        }
      }
      if (isTablet) {
        if (GetPlatform.isMobile) {
          if (shortestSide > 600) {
            return routeTablet;
          }
        }
      }
      if (isWeb) {
        if (GetPlatform.isWeb) {
          return routeWeb;
        }
      }
    } else {
      return 'Error';
    }
    return null;
  }
}
