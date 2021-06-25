extension StringExt on String {
  String get caps => '${this[0].toUpperCase()}${substring(1)}';
}
