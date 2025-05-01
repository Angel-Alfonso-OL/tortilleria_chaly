typedef Validator = String? Function(String?);

final Map<String, Validator> funcionesValidadoras = {
  "text": (value) {
    if (value == null) return "NO PUEDE ESTAR VACIO";
    if (value.isEmpty) return "NO PUEDE ESTAR VACIO";
    if (!RegExp(r"^[a-zA-ZÑñÁáÉéÍíÓóÚú\s]+$").hasMatch(value)) return "SOLO LETRAS";
    return null;
  },
  "number": (value) {
    if (value == null) return "NO PUEDE ESTAR VACIO";
    if (value.isEmpty) return "NO PUEDE ESTAR VACIO";
    if (RegExp(r"^0$").hasMatch(value)) return "NO PUEDE EMPEZAR CON 0";
    if (!RegExp(r"^[0-9]+$").hasMatch(value)) return "SOLO NUMEROS";
    return null;
  },
};

