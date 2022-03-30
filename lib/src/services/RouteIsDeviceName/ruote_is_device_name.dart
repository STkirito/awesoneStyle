import 'package:get/get.dart';

String? routeIsDeviceName({
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
        } /* else {
        return false;
      } */
      }
    }
    if (isTablet) {
      if (GetPlatform.isMobile) {
        if (shortestSide > 600) {
          return routeTablet;
        } /* else {
        return false;
      } */
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
}
