import 'dart:async';
import 'dart:isolate';

void trackCurrentTimeIsolate(SendPort sendPort) {
  Timer.periodic(const Duration(seconds: 1), (timer) {
    sendPort.send(DateTime.now());
  });
}
