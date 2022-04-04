// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:submission_flutter/model/infoUsaha.dart';

class UsahaBersama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFA2EEAF),
        child: Icon(
          Icons.add,
          size: 35,
        ),
        onPressed: () {},
      ),
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
                        elevation: 2,
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("3",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF707070),
                                )),
                            Text(
                              "Dagangan Tersedia",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFF707070),
                              ),
                            ),
                          ],
                        )),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.search),
                        labelText: "Usaha Bersama",
                        labelStyle:
                            TextStyle(fontFamily: 'Poppins', fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 10, 15, 20),
                  width: 400,
                  child: Stack(children: <Widget>[
                    Column(
                        children: infoUsahaList.map((usaha) {
                      return Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(usaha.image),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: Text(
                                    usaha.name,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    usaha.description,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Rp ' + usaha.price,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontFamily: 'MontserratBold'),
                                      ),
                                      FlatButton(
                                        onPressed: () {},
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 6,
                                            bottom: 6,
                                            left: 15,
                                            right: 15,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFA2EEAF),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Center(
                                                child: Text(
                                                  'Hubungi Penjual',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
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
                      );
                    }).toList()),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

var infoUsahaList = [
  InfoUsaha(
      image: "assets/images/grape.jpg",
      name: "Anggur",
      description:
          "Anggur segar dengan harga 100.000 / kilo dapat dikirim keseluruh indonesia untuk lebih lanjut hubungi pengguna",
      price: "100.000"),
  InfoUsaha(
      image: "assets/images/lemon.jpg",
      name: "Lemon",
      description:
          "Lemon segar dengan harga 50.000 / kilo dapat dikirim keseluruh indonesia untuk lebih lanjut hubungi pengguna",
      price: "50.000"),
  InfoUsaha(
      image: "assets/images/lemon.jpg",
      name: "Lemon",
      description:
          "Lemon segar dengan harga 50.000 / kilo dapat dikirim keseluruh indonesia untuk lebih lanjut hubungi pengguna",
      price: "50.000"),
];
