// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:submission_flutter/main_page.dart';

class Regist extends StatefulWidget {
  @override
  _RegistState createState() => _RegistState();
}

class _RegistState extends State<Regist> {
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
              child: ListView(children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 30),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                            color: Colors.white,
                            height: 130,
                            width: 130,
                            child: Image.asset('assets/images/logo.png')),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Isi Form Dibawah Ini Untuk Mendaftar",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 300,
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Nama",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
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
                            labelText: "Alamat",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
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
                            prefixIcon: Icon(Icons.person),
                            labelText: "Email",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
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
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          controller: passwordController,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        child: RaisedButton(
                          color: Colors.white,
                          child: Text("Daftar",
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
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
