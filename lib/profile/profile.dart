// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
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
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      decoration: BoxDecoration(
                          color: Color(0xFFFA2EEAF),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(130),
                              bottomRight: Radius.circular(130))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/ervin.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            child: Text(
                              "ERVIN DWI KURNIAWAN",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                color: Color(0xFFF707070),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Text(
                              "ANGGOTA",
                              style: TextStyle(
                                fontFamily: 'MontserratBold',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFF707070),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "SALDO",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: Color(0xFFF707070),
                                  ),
                                ),
                                Text(
                                  "Rp 1.000.000",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Color(0xFFF707070)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        child: Container(
                          margin: EdgeInsets.only(top: 15),
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.person,
                                        color: Color(0xfffa2eeaf),
                                        size: 35,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "EDIT PROFILE",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: "MontserratBold",
                                            color: Color(0xFFFA2EEAF)),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.navigate_next,
                                    size: 40,
                                    color: Color(0xFFFE1E1E1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.monetization_on,
                                        color: Color(0xFFFA2EEAF),
                                        size: 35,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "PENGHASILAN",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: "MontserratBold",
                                            color: Color(0xFFFA2EEAF)),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.navigate_next,
                                    size: 40,
                                    color: Color(0xFFFE1E1E1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.arrow_back,
                                        color: Colors.red,
                                        size: 35,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "LOGOUT",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: "MontserratBold",
                                          color: Colors.red,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {},
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
