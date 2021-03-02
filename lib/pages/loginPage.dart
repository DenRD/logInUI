import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(250),
            child: AppBar(
              backgroundColor: Colors.white,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
              flexibleSpace: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/vecteezy_circle-abstract_1191814.png',
                      fit: BoxFit.contain,
                      height: 140,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text('PIZZA-SUSHI BAR',style: TextStyle(color: Colors.red, fontSize: 10),))
                  ],
                ),
              ),
              bottom: TabBar(
                indicatorWeight: 3,
                indicatorColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: Text('Войти', style: TextStyle(color: Colors.black)),
                  ),
                  Tab(
                    child: Text('Зарегистрироваться',
                        style: TextStyle(color: Colors.black)),
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
            _tabOne(),
            _tabTwo(),
          ]),
        ));
  }
Widget _tabOne() {
    return Container(
      color: Colors.grey.shade300,
      padding: EdgeInsets.only(left: 50, right: 50, top: 40),
      child: Column(
        children: <Widget>[
          Container(
            child: TextField(
              decoration: InputDecoration(labelText: 'Адресс элктронной почты'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: TextField(
              decoration: InputDecoration(labelText: 'Пароль'),
              obscureText: true,
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 15),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                      text: 'Забыли пароль?',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('pass');
                        }))),
          Container(
            child: Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        color: Colors.red,
                        disabledColor: Colors.red,
                        child: Text('Войти',
                            style: TextStyle(color: Colors.white)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(color: Colors.red)),
                        onPressed: () => print("logIn"),
                      ),
                    ))),
          )
        ],
      ),
    );
  }
  

  Widget _tabTwo() {
    return Container(
      color: Colors.grey.shade300,
      padding: EdgeInsets.only(left: 50, right: 50, top: 40),
      child: Column(
        children: <Widget>[
          Container(
            child: TextField(
              decoration: InputDecoration(labelText: 'Имя'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: TextField(
              decoration: InputDecoration(labelText: 'Адресс элктронной почты'),
              obscureText: true,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: TextField(
              decoration: InputDecoration(labelText: 'Пароль'),
              obscureText: true,
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 15),
              child: RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'Уже зарегистрированы? ',
                    style: TextStyle(color: Colors.grey)),
                TextSpan(
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        fontSize: 16),
                    text: 'Вход',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('logIN');
                      })
              ]))),
          Expanded(
            child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.red,
                    disabledColor: Colors.red,
                    child: Text('Зарегистрироваться',
                        style: TextStyle(color: Colors.white)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.red)),
                    onPressed: () => print("SignUp"),
                  ),
                )),
          )
        ],
      ),
    );



  }
}
