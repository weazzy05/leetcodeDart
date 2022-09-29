class MyQueue {
  List<int> stack = [];
  MyQueue() {}

  void push(int x) {
    stack.add(x);
  }

  int pop() {
    final element = stack.first;
    if (stack.isNotEmpty) stack.removeAt(0);
    return element;
  }

  int peek() {
    return stack.first;
  }

  bool empty() {
    return stack.isEmpty;
  }
}

//https://leetcode.com/problems/implement-queue-using-stacks/