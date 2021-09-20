import 'dart:isolate';

void longtimeTask() {
  for (var i = 0; i < 10000000000; i++) {}
  return null;
}

void foo(SendPort sendPort) {
  // 即使有這longtimeTask 也不會阻塞住執行緒
  // 外面的isolateDemo end 馬上就會被print
  longtimeTask();
  sendPort.send("foo");
}

void isolateDemo() async {
  print('isolateDemo start');
  final receivePort = ReceivePort();

  final isolate = await Isolate.spawn<SendPort>(foo, receivePort.sendPort);

  receivePort.listen((data) {
    print('isolate:$data');
    receivePort.close();
    isolate.kill(priority: Isolate.immediate);
  });
  // 將這行打開執行緒會被佔據
  // longtimeTask();
  print('isolateDemo end');
}
