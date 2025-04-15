import 'package:flutter/widgets.dart';

/// Extension to calculate the cache size of an image
extension ImageExtension on num {
  int cacheSize(BuildContext context) {
    return (this * MediaQuery.of(context).devicePixelRatio).toInt();
  }

  double cacheSizeDouble(BuildContext context) {
    return this * MediaQuery.of(context).devicePixelRatio;
  }
}