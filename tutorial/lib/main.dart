//import 'package:flutter/material.dart';
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
//----------------------------------------------------------------------//
/*
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //왼쪽위 빨간 띠 없애는법
      title: '창경궁',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[800],
      // appBar:
      // title :
      // 위 처럼 쓰는 이유는 Scaffold가 많은 아규먼트를 가지고 있고, 그중에 하나의 named argument의 형태로 사용
      //
      // 그럼  appBar: new AppBar  에서 new가 붙어도 에러가 나지 않는 이유는 ?
      // Widget앞에 써도 에러가 안나는 이유는 모든 Widget은 클래스를 통해 생성된 인스턴스이다.
      // AppBar 생성자에 통해 여러개의 argument들을 named argument의 형태로 필요한 만큼 선별적으로 사용하여 만들어진 인스턴스이다.
      // 일반적으로 위젯은 클래스로 표현이 되고, new라는 키워드로 생성자로 인스턴스를 만들어 사용한다.
      //----------------------------------------------------------------------//
      appBar: new AppBar(
        title: new Text('WareHouse'),
        //----------------------------------------------------------------------//
        backgroundColor: Colors.lightBlue[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //가로 정렬
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/giphy.gif'),
                radius: 60.0,
                backgroundColor: Colors.lightBlue[800],
              ),
            ),
            Divider(
              //구분선
              height: 60.0,
              color: Colors.white,
              thickness: 0.5, //선의 두께
              endIndent: 30.0, //왼쪽에 붙어 있는선 띄우기
            ),
            Center(
              child: Text(
                '이름',
                style: TextStyle(color: Colors.white, letterSpacing: 2.0 //글자간격
                    ),
              ),
            ),
            SizedBox(
              height: 3.0, //로그인과 회원가입사이를 벌어줌
            ),
            Center(
              child: Text('홍길동',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                '닉네임',
                style: TextStyle(color: Colors.white, letterSpacing: 2.0 //글자간격
                    ),
              ),
            ),
            SizedBox(
              height: 3.0, //로그인과 회원가입사이를 벌어줌
            ),
            Center(
              child: Text(
                '창고지기',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('이용약관 동의',
                      style:
                          TextStyle(fontSize: 16.0, letterSpacing: 1.0 //철자 간격
                              )),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('이용약관 동의',
                      style:
                          TextStyle(fontSize: 16.0, letterSpacing: 1.0 //철자 간격
                              )),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '이용약관 동의',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0 //철자 간격
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            /*Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/contain.png'),
                radius: 40.0,
                backgroundColor: Colors.lightBlue[700],
              ),
            )*/
          ],
        ),
      ),
    );
  }
}*/
//----------------------------------------------------------------------//

//Flutter 추가 이론적인 내용은 README.md에 추가 하였다.
/*README.md와 동일 내용
color: Colors.white, 코드에서 .의 의미?
-> widget이 가지고 있는 여러가지 속성이나 기능 관련 아이템 중에서 하나를 선택하고 싶을때 사용한다.

Center widget이 있다고, 무조건 정중앙으로 가지는 않는다.
->Center와 Column widget이 사용되어야 한다. 또는 Row Widget
->세로축 정 중앙에 위치 시키려면 Column위젯 내에 mainAxisAlignment: MainAxisAlignment.center 속성을 사용해야 한다.*/

//App Bar메뉴
//----------------------------------------------------------------------//
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar menu'),
        centerTitle: true,
        elevation: 0.0,

        //왼쪽위 햄버거 모양 아이콘
        //--------------------------------------------------------------------//
        /*leading: IconButton(
          //leading: 간단한 위젯이나 아이콘을 앱바타이틀 왼쪽에 배치 할때 쓰인다.
          icon: Icon(Icons.menu),
          onPressed: () {
            print('menu button click');
          },
        ),*/
        //--------------------------------------------------------------------//

        actions: [
          //actions: 복수의 아이콘 버튼을 오른쪽에 배치할때 사용한다.
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              //onPressed: 함수의 형태로 일반 버튼이나 아이콘 버트을 터치했을 때 일어나는 이벤트
              print('shopping button click');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search button click');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/giphy.gif'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('창경궁'),
              accountEmail: Text('chang@chang.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  //UserAccountsDrawerHeader 모서리 둥글게
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0))),
            )
          ],
        ),
      ),
    );
  }
}
