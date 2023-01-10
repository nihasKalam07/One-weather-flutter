import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String result = await task2();
  task3(result);
}

void task1() {
  print("task 1 complete");
}

Future<String> task2() async {
  String result = "";
  Duration duration = const Duration(seconds: 3);
  await Future.delayed(duration, () {
    result = "task 2 data";
    print("task 2 complete");
  });
  return result;
}

void task3(String task2Data) {
  print("task 3 complete $task2Data");
}
