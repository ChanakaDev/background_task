# Background process - Using Flutter ISOLATES

All Dart code runs in an isolate, and code can access classes and values only from the same isolate. Different isolates can communicate by sending values through ports (see ReceivePort, SendPort).
