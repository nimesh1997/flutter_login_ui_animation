import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(20.0),
          color: Color.fromRGBO(3, 9, 23, 1),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 36.0, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                    border: Border.all(color: Colors.white.withOpacity(0.7))
                ),
                height: 200.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Email Id', border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(3, 9, 23, 1))))),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Password', border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(3, 9, 23, 1))))),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Container(
                  width: 120.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40.0)), color: Colors.blue),
                  child: FlatButton(
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 16.0),
                      )),
                ),
              )
            ],
          )),
    );
  }
}
