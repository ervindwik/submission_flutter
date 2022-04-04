// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:submission_flutter/home/detail_belajar_bersama.dart';
import 'package:submission_flutter/model/infoBelajar_place.dart';

class BelajarBersama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFA2EEAF),
        child: Icon(
          Icons.add,
          size: 35,
        ),
        focusColor: Colors.white,
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
                              "Materi Tersedia",
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
                        labelText: "Belajar Bersama",
                        labelStyle:
                            TextStyle(fontFamily: 'Poppins', fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: infoPlaceList.map((place) {
                    return FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailBelajar(place: place);
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
                                  flex: 1,
                                  child: Image.asset(
                                    place.image,
                                    fit: BoxFit.cover,
                                  )),
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
                                        place.name,
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        place.description,
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

var infoPlaceList = [
  InfoPlace(
    image: 'assets/images/hidroponik.jpg',
    name: 'Hidroponik',
    description: 'Belajar Menanam sayur degan metodi hidroponik dari 0',
    descriptionFull:
        "Hidroponik sendiri merupakan teknik budidaya tanaman dengan memanfaatkan air tanpa tanah. Hidroponik menekankan pada pemenuhan nutrisi pada tanaman Tertarik menanam tanaman dengan hidroponik? Atap Bersama tak segan memberikan beberapa tips memulai hidroponik untuk Anda. Mulai dengan peralatan sederhana Gengsi terkadang membuat seseorang ingin tampil maksimal dengan membeli berbagai perlengkapan mahal,Dilengkapi dengan vidio tutorial mulai dari 0 anda akan dibimbing sampai hebat dan mahir dalam materi ini",
    text:
        "Jika anda tertarik untuk mempelajarinya silahkan klik tombil dibawah untuk lebih lanjut anda juga akan mendapatkan akses grub chat",
    price: "Rp 200.000",
    location: "Bandung",
    imageAssets: [
      'assets/images/hidroponik1.jpg',
      'assets/images/hidroponik2.jpg',
      'assets/images/hidroponik3.jpg',
    ],
  ),
  InfoPlace(
    image: 'assets/images/english.jpg',
    name: 'English',
    description: 'Belajar bahasa ingris untuk pemula',
    descriptionFull:
        "Dikelas ini anda akan diajari Bahsa Ingris sampai mahir dengan didampingi oleh mentor mentor terbaik anda akan mendapatkan akses vidio yang lengkap dan dapat diakses secara Ofline, anda cukup membayar 500.000 untuk akses / Tahun",
    text:
        "Jika anda tertarik untuk mempelajarinya silahkan klik tombil dibawah untuk lebih lanjut anda juga akan mendapatkan akses grub chat",
    price: "Rp 500.000",
    location: "Makassar",
    imageAssets: [
      'assets/images/english1.jpg',
      'assets/images/english2.jpg',
      'assets/images/english3.jpg',
    ],
  ),
  InfoPlace(
    image: 'assets/images/math.jpeg',
    name: 'Test Cpns',
    description: 'Belajar persiapan untuk test Cpns',
    descriptionFull:
        "Dikelas ini anda akan diajari mulai dari awal tes masuk Cpns latihan dengan banyak contoh kasus soal diserta dengan vidio yang lengkap dan mentor yang berpengalaman anda cukup membayar 50.000 / 3 bulan",
    text:
        "Jika anda tertarik untuk mempelajarinya silahkan klik tombil dibawah untuk lebih lanjut anda juga akan mendapatkan akses grub chat",
    price: "50.000",
    location: "Makassar",
    imageAssets: [
      'assets/images/math1.jpg',
      'assets/images/math2.jpg',
      'assets/images/math3.jpg',
    ],
  ),
];
