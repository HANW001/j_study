import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Todo {
  bool isDone = false;
  String title;

  Todo(this.title);
}

// 시작클래스
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '할 일 관리',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoListPage(),
    );
  }
}

// TodoListPage 클래스
class TodoListPage extends StatefulWidget {
  // TodoListPage({Key? key}) : super(key: key);

  @override
  _TodoListPageState createState() => _TodoListPageState();
}

// TodoListPage의 State 클래스
class _TodoListPageState extends State<TodoListPage> {

  // 할 일 추가 메서드
  void _addTodo(Todo todo) {
    setState(() {
      _items.add(todo);
      _todoController.text = '';
    });
  }

  // 할 일 삭제 메서드
  void _deleteTodo(Todo todo) {
    setState(() {
      _items.remove(todo);
    });
  }

  // 할 일 완료/미완료 메서드
  void _toggleTodo(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone; // 반전시킨다
    });
  }

  final _items = <Todo>[];

  var _todoController = TextEditingController();



  @override
  void dispose() {
    _todoController.dispose(); // 사용이 끝나면 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('남은 할 일'),
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    // 할 일 받을 textfield, 컨트롤러를 연결하고 Expanded위젯으로 감싸서 추가 버튼 이외의 영역을 꽉 채운다
                    controller: _todoController,
                  ),
                ),
                ElevatedButton(
                  child: Text('추가'),
                  onPressed: () => _addTodo(
                      Todo(_todoController.text)), // 버튼을 눌렀을 때 addtodo가 실행
                ),
              ],
            ),
            Expanded(
                    child: ListView(
                      // 할 일 목록을 표시하는 부분 ListView 위젯은 Column위젯의 children프로퍼티에 포함될때 expanded위젯을 감싸야 정상 작동한다.
                      children: _items
                          .map((todo) => _buildItemWidget(todo)).toList(), // map()함수를 통해 내부순환하여 todo인수를 받고 build메서들 반환환다.
                    ),
                  ),
                ],
        ),
        ),
      );
  }

  // 하일 객체를 ListTile 형태로 변경하는 메서드
  Widget _buildItemWidget(Todo todo) {
    return ListTile(
      onTap: () => _toggleTodo(todo), // Todo: 클릭 시 완료/취소 되도록 수정
      title: Text(
        todo.title,
        style: todo.isDone // 완료일때는 스타일 적용
            ? TextStyle(
          decoration: TextDecoration.lineThrough,
          fontStyle: FontStyle.italic,
        )
            : null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: () => _deleteTodo(todo), // 쓰레기통 버튼 누르면 삭제
      ),
    );
  }

}
