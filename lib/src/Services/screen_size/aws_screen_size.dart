import 'package:flutter/widgets.dart';

typedef AwsScreenSizePercentage = double;

extension AwsScreenSize on BuildContext {
  AwsScreenSizePercentage width(AwsScreenSizePercentage percentage) {
    if (percentage > 0 && percentage <= 100) {
      return MediaQuery.of(this).size.width * (percentage / 100);
    }
    return MediaQuery.of(this).size.width * (10 / 100);
  }

  AwsScreenSizePercentage height(AwsScreenSizePercentage percentage) {
    if (percentage > 0 && percentage <= 100) {
      return MediaQuery.of(this).size.height * (percentage / 100);
    }
    return MediaQuery.of(this).size.height * (10 / 100);
  }
}
