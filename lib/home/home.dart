// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:submission_flutter/home/bekerja_bersama.dart';
import 'package:submission_flutter/home/keuangan.dart';
import 'package:submission_flutter/home/usaha_bersama.dart';
import 'package:submission_flutter/home/belajar_bersama.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      child: Card(
                        color: Color(0xFFFA2EEAF),
                        elevation: 5,
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("100",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF707070),
                                )),
                            Text(
                              "Anggota Terdaftar",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFF707070),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "NAMA ORGANISASI",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        )),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 270,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              flex: 1,
                              child: Card(
                                elevation: 4,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return BelajarBersama();
                                    }));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.all(5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.assignment, size: 30),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "Belajar Bersama",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color(0xFFF707070)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Card(
                                elevation: 4,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return BekerjaBersama();
                                    }));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.all(5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.supervised_user_circle,
                                            size: 30),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "Bekerja Bersama",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color(0xFFF707070)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              flex: 1,
                              child: Card(
                                elevation: 4,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return UsahaBersama();
                                    }));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.all(5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.supervised_user_circle,
                                            size: 30),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "Usaha Bersama",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color(0xFFF707070)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Card(
                                elevation: 4,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Keuangan();
                                    }));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.all(5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.attach_money, size: 30),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "Keuangan",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color(0xFFF707070)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
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
          ],
        ),
      ),
    );
  }
}
