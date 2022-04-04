// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:submission_flutter/login-and-register/login_page.dart';

// ignore: must_be_immutable
class HalamanUtama extends StatelessWidget {
  TextStyle mainheader = TextStyle(
    color: Colors.grey,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100, bottom: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    Container(
                      width: 200,
                      child: Text(
                        "Halo Selamat datang di EKurniawan.id klik tombol dibawah untuk lebih lanjut",
                        textAlign: TextAlign.center,
                        style: mainheader,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 200,
                      height: 50,
                      child: RaisedButton(
                        color: Color(0xFFFA2EEAF),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }));
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Get Started",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold)),
                              Icon(Icons.navigate_next)
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
