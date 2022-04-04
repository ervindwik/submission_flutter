// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:submission_flutter/model/infoBekerja_place.dart';

class DetailBekerjaBersama extends StatelessWidget {
  final InfoBekerja kerja;

  DetailBekerjaBersama({required this.kerja});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40)),
                        image: DecorationImage(
                            image: AssetImage(kerja.image), fit: BoxFit.cover)),
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
                margin: EdgeInsets.all(10),
                child: Text(
                  kerja.name,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'MontserratBold',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 170,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: kerja.imageAssets.map((asset) {
                      return Padding(
                        padding: EdgeInsets.all(10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(asset)),
                      );
                    }).toList()),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(Icons.location_on),
                    Text(
                      kerja.location,
                      style:
                          TextStyle(fontSize: 20, fontFamily: 'MontserratBold'),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
                child: Text(
                  kerja.descriptionFull,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700]),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: RaisedButton(
                    color: Color(0xFFFA2EEAF),
                    child: Text(
                      "Hubungi Layangan",
                      style:
                          TextStyle(fontSize: 17, fontFamily: 'MontserratBold'),
                    ),
                    onPressed: () {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
