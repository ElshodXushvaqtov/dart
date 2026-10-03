enum Setting<T> {
  volume<int>(50),
  darkMode<bool>(false),
  language<String>('uz');

  final T defaultValue;

  const Setting(this.defaultValue);

  static void printAll() {
    for (Setting s in Setting.values) {
      print('${s.name} = ${s.defaultValue}');
    }
  }
}

void main() {
  int v = Setting.volume.defaultValue; 
  bool d = Setting.darkMode.defaultValue; 

  print('Volume: $v');
  print('Dark mode: $d');

  Setting.printAll();
}
