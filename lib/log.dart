import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Log extends StatefulWidget {
  const Log({Key? key}) : super(key: key);

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
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
                        width: 100,
                      ),
                      Text(
                        "Log Kejadian",
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
                                  image: AssetImage("assets/images/log.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Text(
                          "Log Kejadian Merupakan Daftar / Log Kejadian Yang Sedang Berlangsung Maupun Telah Terjadi Di Jawa Timur yang bisa anda lihat / download pada tombol dibawah ini.",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.justify,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange.shade800),
                            onPressed: () async {
                              await openUrl(
                                  'https://smartpb.bpbd.jatimprov.go.id/public/v_disasterlogs_list.php',
                                  enableJavaScript: true);
                            },
                            child: Text("Lihat",
                                style: TextStyle(color: Colors.white)))
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
