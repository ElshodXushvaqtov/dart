import 'dart:async';

void main() {
  Stream<int> ticks = Stream.periodic(Duration(seconds: 1), (i) => i + 1);

  int count = 0;
  late StreamSubscription<int> subscription;

  subscription = ticks.listen((tick) {
    print('Tick $tick');
    count++;

    if (count == 5) {
      print('Stop!');
      subscription.cancel();
    }
  });
}
