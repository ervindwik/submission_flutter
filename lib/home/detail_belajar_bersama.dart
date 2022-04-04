// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:submission_flutter/model/infoBelajar_place.dart';

class DetailBelajar extends StatelessWidget {
  final InfoPlace place;

  DetailBelajar({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 350,
                    color: Colors.red,
                    child: Image.asset(
                      place.image,
                      fit: BoxFit.cover,
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
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  children: [
                    Text(
                      place.descriptionFull,
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700]),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text("Gambar Terkait Lainya",
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      height: 150,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: place.imageAssets.map((asset) {
                            return Padding(
                              padding: EdgeInsets.all(10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(asset)),
                            );
                          }).toList()),
                    ),
                    Container(
                      child: Text(
                        place.text,
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700]),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          place.price,
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'MontserratBold'),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.location_on),
                            Text(place.location,
                                style: TextStyle(
                                    fontSize: 18, fontFamily: 'MontserratBold'))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(20),
                child: RaisedButton(
                  color: Color(0xFFFA2EEAF),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Beli Token",
                      style:
                          TextStyle(fontFamily: 'MontserratBold', fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
