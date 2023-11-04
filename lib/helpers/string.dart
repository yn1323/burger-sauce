String nameWithForm({required String name, required String form}) {
  if (form.isEmpty) {
    return name;
  }
  return '$name($form)';
}

String hiraToKata(String text) {
  return text.replaceAllMapped(RegExp(r'[ぁ-ん]'), (match) {
    return String.fromCharCode(match.group(0)!.codeUnitAt(0) + 0x60);
  });
}
