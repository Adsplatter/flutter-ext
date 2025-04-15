/// Capitalize string extension
extension CapExtension on String {
  String get inCaps => '${this[0].toUpperCase()}${substring(1)}';
  String get uppercaseFirst => '${this[0].toUpperCase()}${substring(1)}';
  String get allInCaps => toUpperCase();
  String get capitalizeFirstOfEach => split(" ").map((str) => str.toUpperCase()).join(" ");
}