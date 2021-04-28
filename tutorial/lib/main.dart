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
/*
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
*/
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
//
//
//
//
//
//Widget 종류
//---------------------------------------------//
/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charator',
      home: Mychar(),
    );
  }
}

class Mychar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first App'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0, //그림자
      ),
      body: Center(
        child: Column(
          //Widget 세로정렬
          mainAxisAlignment: MainAxisAlignment.center, //Axis:가로,세로축
          children: [Text('로그인'), Text('회원가입'), Text('아이디찾기')],
        ),
      ),
    );
  }
}
*/
//---------------------------------------------//
//
//
//
//
//Page Design

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '창경궁',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('창경궁'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '로그인',
              style: TextStyle(color: Colors.white, letterSpacing: 2.0 //글자간격
                  ),
            ),
            SizedBox(
              height: 10.0, //로그인과 회원가입사이를 벌어줌
            ),
            Text('회원가입',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
