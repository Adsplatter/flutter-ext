/// Capitalize string extension
extension CapExtension on String {
  /// Capitalizes the first letter of the string
  String get inCaps => isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';

  /// Alias for `inCaps`
  String get uppercaseFirst => inCaps;

  /// Converts entire string to uppercase
  String get allInCaps => toUpperCase();

  /// Capitalizes the first letter of each word
  String get capitalizeFirstOfEach =>
      split(" ").map((str) => str.isNotEmpty ? '${str[0].toUpperCase()}${str.substring(1)}' : '').join(" ");
}

