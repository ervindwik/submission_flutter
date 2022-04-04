// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:submission_flutter/home/detail_bekerja_sama.dart';
import 'package:submission_flutter/model/infoBekerja_place.dart';

class BekerjaBersama extends StatelessWidget {
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
                              "Lowongan Tersedia",
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
                        labelText: "Bekerja Bersama",
                        labelStyle:
                            TextStyle(fontFamily: 'Poppins', fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: infoBekerjaList.map((kerja) {
                    return FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailBekerjaBersama(
                            kerja: kerja,
                          );
                        }));
                      },
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                  flex: 1, child: Image.asset(kerja.image)),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        kerja.name,
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        kerja.description,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.navigate_next,
                                  size: 70,
                                  color: Color(0xFFFA2EEAF),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

var infoBekerjaList = [
  InfoBekerja(
    image: 'assets/images/frontend.jpg',
    name: 'FrontEnd Developer',
    description: 'PT Flutter Beginer',
    descriptionFull:
        "Dibutuhkan segera frontEnd Developer yang minimal pengalaman kerja 1 tahun atau sudah membuat projek berkaitan dengan FrontEnd dan masimal umur 27 tahun jika berminat klik tombol dibawah untuk lebih lanjut",
    location: "Makassar",
    imageAssets: [
      'assets/images/frontend1.jpg',
      'assets/images/frontend2.jpg',
      'assets/images/frontend3.jpg',
    ],
  ),
  InfoBekerja(
    image: 'assets/images/kariawan.jpg',
    name: 'Karyawan',
    description: 'PT Flutter Beginer',
    descriptionFull:
        "Dibutuhkan segera kariawan berpengalaman kerja minimal 2 tahun maksimal usia 3 tahun jika anda tertarik klik tombol dibawah untuk lebih lanjut",
    location: "Jakarta",
    imageAssets: [
      'assets/images/kariawan1.jpg',
      'assets/images/kariawan2.jpg',
      'assets/images/kariawan3.jpg'
    ],
  ),
  InfoBekerja(
    image: 'assets/images/uiux.jpg',
    name: 'UIUX',
    description: 'Pt Flutter Beginer',
    descriptionFull:
        "Dibutuhkan segera UIUX yang minimal pengalaman kerja 1 tahun atau sudah membuat projek berkaitan dengan UIUX dan maksimal umur 27 tahun jika berminat klik tombol dibawah untuk lebih lanjut",
    location: "Bandung",
    imageAssets: [
      'assets/images/uiux1.jpg',
      'assets/images/uiux2.jpg',
      'assets/images/uiux3.jpg'
    ],
  ),
];
