// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:submission_flutter/main_page.dart';
import 'package:submission_flutter/login-and-register/regist.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              color: Color(0xFFFA2EEAF),
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 60,
                      bottom: 50,
                    ),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Container(
                            height: 150,
                            width: 150,
                            color: Colors.white,
                            child: ClipRRect(
                                child: Image.asset('assets/images/logo.png')),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          width: 300,
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.person),
                              labelText: "Email",
                              labelStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                            ),
                            controller: emailController,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.visibility),
                              labelText: "Password",
                              labelStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                            ),
                            controller: passwordController,
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Tidak punya akun?"),
                              FlatButton(
                                  child: Text(
                                    "Daftar di sini",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Regist();
                                    }));
                                  }),
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: RaisedButton(
                            color: Colors.white,
                            child: Text("Login",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MainPage();
                              }));
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: RaisedButton(
                            color: Colors.white,
                            child: Text("Login With Google",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
