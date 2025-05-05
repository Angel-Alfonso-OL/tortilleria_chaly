
class InputValidator {
  static String? textValidator(String? value) {
    if (value == null) return "NO PUEDE ESTAR VACIO";
    if (value.isEmpty) return "NO PUEDE ESTAR VACIO";
    if (!RegExp(r"^[a-zA-ZÑñÁáÉéÍíÓóÚú\s]+$").hasMatch(value)) return "SOLO LETRAS";
    return null;
  }

  static String? numberValidator(String? value) {
    if (value == null) return "NO PUEDE ESTAR VACIO";
    if (value.isEmpty) return "NO PUEDE ESTAR VACIO";
    if (RegExp(r"^0$").hasMatch(value)) return "NO PUEDE EMPEZAR CON 0";
    if (!RegExp(r"^[0-9]+$").hasMatch(value)) return "SOLO NUMEROS";
    return null;
  }
}
