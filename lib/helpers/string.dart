String combineNameWithForm({required String name, required String form}) {
  if (form.isEmpty) {
    return name;
  }
  return '$name($form)';
}
