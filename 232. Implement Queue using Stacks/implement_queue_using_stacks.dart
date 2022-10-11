class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  E get peek => _storage.last;

  bool get isEmpty => _storage.isEmpty;

  bool get isNotEmpty => !isEmpty;

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }
}

class MyQueue {
  Stack<int> _stackFirst;
  Stack<int> _stackPeek;
  MyQueue()
      : _stackFirst = Stack<int>(),
        _stackPeek = Stack<int>();

  void push(int x) {
    _stackFirst.push(x);
  }

  int pop() {
    if (_stackPeek.isNotEmpty) {
      return _stackPeek.pop();
    }
    while (_stackFirst.isNotEmpty) {
      _stackPeek.push(_stackFirst.pop());
    }
    return _stackPeek.pop();
  }

  int peek() {
    if (_stackPeek.isNotEmpty) {
      return _stackPeek.peek;
    }
    while (_stackFirst.isNotEmpty) {
      _stackPeek.push(_stackFirst.pop());
    }
    return _stackPeek.peek;
  }

  bool empty() {
    return _stackFirst.isEmpty && _stackPeek.isEmpty;
  }
}

//https://leetcode.com/problems/implement-queue-using-stacks/