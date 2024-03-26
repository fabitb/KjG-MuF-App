extension StringExtension on String? {
  bool isNotNullAndNotEmpty() => this != null && this!.isNotEmpty;
}
