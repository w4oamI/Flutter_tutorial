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
/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(), //커스텀위젯 생성
    );
  }
}

/* 
Widget build(BuildContext context)
return Scaffold
빌드 함수는 Scaffold를 리턴하는데 이때 위젯 트리 상에서 어디에 
위치하는가에 대한 정보를 가지고 있는 context를 넣어 리턴 한다*/
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build메소드는 Widget타입이다. 인자값은 BuildContext타입의 context인자 값이다.
    return Scaffold(
      //즉, build함수는 context인자 값을 대입한 scaffold를 return 한다.
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
                //하나만 가능
                backgroundImage: AssetImage('assets/giphy.gif'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                //복수개 가능
                CircleAvatar(
                  backgroundImage: AssetImage('assets/giphy.gif'),
                  backgroundColor: Colors.white,
                ),
                //CircleAvatar(
                //backgroundImage: AssetImage('assets/giphy.gif'),
                //  backgroundColor: Colors.white,
                //)
              ],
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
            ),
            ListTile(
              leading: Icon(
                //왼쪽에 아이콘 넣기)
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('home'),
              onTap: () {
                print('home is clicked');
              },
              trailing: Icon(Icons.add //오른쪽에 아이콘 넣기
                  ),
            ),
            ListTile(
              leading: Icon(
                //왼쪽에 아이콘 넣기)
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('setting'),
              onTap: () {
                print('home is clicked');
              },
              trailing: Icon(Icons.add //오른쪽에 아이콘 넣기
                  ),
            ),
            ListTile(
              leading: Icon(
                //왼쪽에 아이콘 넣기)
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('home is clicked');
              },
              trailing: Icon(Icons.add //오른쪽에 아이콘 넣기
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

//[fn+control+f11]은 코드 정리 단축키  (키 등록 해놓음)
//Builder Widget을 이용하여 스낵바 생성
//--------------------------------------------------------------------//
/*
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'snack Bar',
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
          title: Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            //MyPage의 context와 비교하기 위해 ctx로 바꾼다.
            return Center(
              child: FlatButton(
                child: Text(
                  'Show me',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                onPressed: () {
                  Scaffold.of(ctx).showSnackBar(SnackBar(
                    //Scaffold.of(context)은 빌더의 ctx를 받아야함
                    content: Text('Good'),
                  ));
                },
              ),
            ); //center위젯은 이제 리턴된 위젯이기 때문에 ;로 바꾼다.
          },
        ));
  }
}
*/

//Builder widget 없이 Snack bar 만들기
//--------------------------------------------------------------------//
/*
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      color: Colors.red,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          child: Text('Show Me'),
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Hello',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.teal,
                duration: Duration(milliseconds: 1000),
              ),
            );
          }),
    );
  }
}
*/
//--------------------------------------------------------------------//

//--------------------------------------------------------------------//
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'toast',
      color: Colors.red,
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast'),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            flutterToast();
          },
          child: Text('Toast'),
          color: Colors.blue,
        ),
      ),
    );
  }
}

//토스트 메세지는 스낵바와는 다르게 pubspec.yaml 파일에서 추가해야한다.
//cupertino_icons 밑에  [fluttertoast: ^3.1.3]를 추가한다.
//그후 토스르를 import 한다.

void flutterToast() {
  Fluttertoast.showToast(
      msg: 'Toast얘제',
      //커스터마이징
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 15.0,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_SHORT);
}

//--------------------------//
//코드 확인 21.05.28
//CS정리(sesstion and cookie)
//CS정리(클러스터 and 논클러스터)
//CS정리(MVC패턴)
//--------------------------//

//Container Widget
//---------------------------------------//
//children이 없을 경우 컨테이너 위젯은 할수 있는 최대한의 공간을 차지한다.
//아래는 설명을 위한 코드므로 개별 실행 불가능
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.white,
      ),
    );
  }
}

//위 코드에서 Scaffold의 배경을 검은색으로 해놓았을때, 앱의 배경이 검은색이 된다.
//하지만 컨테이너를 만들고, 컨테이너의 배경을 하얀색으로 해놓았을때, child가 없기 때문에
//결과로는 검은색이 존재하지 않는 하얀색이 나오게 된다.
//그렇다면 child을 사용하게 되면 어떻게 되는지 아래 코드를 보겠다.
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.white,
        child: Text('컨테이너 예제'),
      ),
    );
  }
}
//위와 같이 child: Text('컨테이너 예제'), 한줄을 추가 하게 되면
//텍스트의 크기만큼 컨테이너의 배경인 하얀색이 잡힌다. 그 이외의 공간은
//Scaffold에서 지정한 검은색이 나온다.
//즉, 모든 화면이 검정색인데, 왼쪽위에 [컨테이너 예제] 텍스트 크기만 하얀색으로 나온다.

/* Container는 children을 가지게 되면 children의 크기로 줄어든다. */
//---------------------------------------//

//---------------//
//CS정리(HTTP와 HTTPS)
//---------------//
