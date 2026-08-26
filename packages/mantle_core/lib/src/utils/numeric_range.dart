/// Extension for checking if a number is within a given range.
extension Range on num {
  /// Checks if the number is within the specified range.
  bool inRange(num min, num max) {
    return this >= min && this <= max;
  }
}
