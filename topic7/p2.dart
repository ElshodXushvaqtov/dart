enum Day { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

void main() {
  for (Day day in Day.values) {
    print(day.name);
  }

  print('Number of days: ${Day.values.length}');
}
