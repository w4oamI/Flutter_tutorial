import 'package:flutter/material.dart';
//함수만드는 순서
/* 
material 라이브러리 import
시작점 알려주기 => void main
최상위 함수 불러오기
커스텀 위젯 아규먼트 넣기
statless로 커스텀 위젯 생성
컨테이너 위젯을 material위젯으로 바꾸기
타이틀 지정
theamedata불러오기
swatch불러와서 블루 음영으로 지정하기
홈에서 마이홈페이지로 커스텀위젯 이름 지정하기*/

//---------------------------------------------//

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('첫번째 화면'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[Text('Hello'), Text('world'), Text('everyone')],
        ),
      ),
    );
  }
}

//---------------------------------------------//

//위랑은 다른 방법을 사용하는법
//---------------------------------------------//
/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('첫번째 화면'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[Text('Hello'), Text('world'), Text('everyone')],
          ),
        ),
      ),
    );
  }
}
*/
//---------------------------------------------//
