extension StringX on String {
  bool toBoolean() {
    return (toLowerCase() == "true" || toLowerCase() == "1")
        ? true
        : false;
  }
}