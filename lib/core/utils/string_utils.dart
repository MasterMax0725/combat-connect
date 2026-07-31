class StringUtils {
  StringUtils._();

  static bool isBlank(String? value) => value == null || value.trim().isEmpty;
}
