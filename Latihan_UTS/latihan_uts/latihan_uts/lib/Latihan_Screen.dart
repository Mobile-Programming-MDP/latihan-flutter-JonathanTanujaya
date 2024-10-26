import 'package:flutter/material.dart';

class LatihanScreen extends StatelessWidget {
  const LatihanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan UTS"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "INFORMATIKA",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Image.asset(
              "images/latihan.jpg",
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Universitas Multi Data Palembang",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            const Text(
              "Kota Palembang, Prov. Sumatera Selatan ",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red[900],
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    //TODO : baris berisi info
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //kiri status dan akreditasi
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Status",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Aktif",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Akreditasi",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Unggul",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        //kanan tanggal berdiri dan jumlah mahasiswa
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tanggal Berdiri',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "9 April 2021",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Jumlah Mahasiswa",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "5000",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "0711-376400",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )),
                          Expanded(
                                child: Row(
                              children: [
                                Icon(
                                  Icons.mail,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "kuliah@mdp.ac.id",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )),
                            Expanded(
                                child: Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "0711-376400",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )),

                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
