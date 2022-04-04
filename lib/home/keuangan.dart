import 'package:flutter/material.dart';

class Keuangan extends StatelessWidget {
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
                        elevation: 2,
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Rp. 100.000",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF707070),
                                )),
                            Text(
                              "Saldo Tersedia",
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
                            Text("Rp. 100.000",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF707070),
                                )),
                            Text(
                              "Pengeluaran",
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
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'Catatan Keuangan',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: <Widget>[
                              Icon(Icons.backup,
                                  size: 50, color: Color(0xFFFA2EEAF)),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "1 Oktober 2020",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'MentserratBold'),
                                  ),
                                  Text(
                                    "Pendaftaran Anggota",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFFF707070),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins'),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Rp.1.000.000',
                                style: TextStyle(
                                    fontFamily: 'MontserratBold', fontSize: 18),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: <Widget>[
                              Icon(Icons.cloud_download,
                                  size: 50, color: Color(0xFFFFF5A5A)),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "1 Oktober 2020",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'MentserratBold'),
                                  ),
                                  Text(
                                    "Pendaftaran Anggota",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFFF707070),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins'),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Rp.1.000.000',
                                style: TextStyle(
                                    fontFamily: 'MontserratBold', fontSize: 18),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
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
