import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Lapor extends StatefulWidget {
  const Lapor({Key? key}) : super(key: key);

  @override
  State<Lapor> createState() => _LaporState();
}

class _LaporState extends State<Lapor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Frame.png"), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                child: Center(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_left),
                        splashColor: Colors.orange,
                        color: Colors.white,
                      ),
                      Container(
                        width: 90,
                      ),
                      Text(
                        "Lapor Kejadian",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 8,
              child: Container(
                child: Container(
                  width: 300,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(40),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/lapor.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Text(
                          "Laporkan Kejadian Bencana yang terdapat di daerah anda dengan menekan salah satu tombol dibawah sertakan bukti foto maupun video kejadian bencana dan lokasi serta detail bencana, akan ada petugas kami yang menghubungi anda  untuk verifikasi dan meminta keterangan lebih lanjut ",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.justify,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange.shade800),
                                onPressed: () async {
                                  await openUrl('https://wa.me/6285156865853',
                                      enableJavaScript: true);
                                },
                                child: Text("Agen 1",
                                    style: TextStyle(color: Colors.white))),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange.shade800),
                                onPressed: () async {
                                  await openUrl('https://wa.me/6285156865853',
                                      enableJavaScript: true);
                                },
                                child: Text("Agen 2",
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange.shade800),
                                onPressed: () async {
                                  await openUrl('https://wa.me/6285156865853',
                                      enableJavaScript: true);
                                },
                                child: Text("Agen 3",
                                    style: TextStyle(color: Colors.white))),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange.shade800),
                                onPressed: () async {
                                  await openUrl('https://wa.me/6285156865853',
                                      enableJavaScript: true);
                                },
                                child: Text("Agen 4",
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> openUrl(String url, {bool enableJavaScript = false}) async {
  await launch(url);
}
