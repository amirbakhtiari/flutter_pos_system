extension StringExtensions on String {
  /// Checks if the string is null or empty.
  bool get isNullOrEmpty => this == null || this.isEmpty;

  /// Capitalizes the first letter of the string.
  String capitalize() {
    if (isNullOrEmpty) return this;
    return '${this[0].toUpperCase()}${this.substring(1)}';
  }

  /// Reverses the string.
  String reverse() {
    return this.split('').reversed.join('');
  }

  /// Trims whitespace from both ends of the string.
  String trimWhitespace() {
    return this.trim();
  }

  /// Checks if the string is a valid email.
  bool isValidEmail() {
    final RegExp emailRegExp = RegExp(r'^[^@]+@[^@]+\.[a-zA-Z]{2,}
  ');
    return emailRegExp.hasMatch(this);
  }
}