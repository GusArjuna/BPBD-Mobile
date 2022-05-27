import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
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
                        "Peringatan Dini",
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
                                  image:
                                      AssetImage("assets/images/weather.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Text(
                          "Peringatan Dini Merupakan Perkiraan Cuaca Hingga 3 hari kedepan yang bisa anda lihat dan download dengan menekan tombol dibawah ini",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.justify,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange.shade800),
                            onPressed: () async {
                              await openUrl(
                                  'https://www.bmkg.go.id/cuaca/prakiraan-cuaca-indonesia.bmkg?Prov=12&NamaProv=Jawa%20Timur',
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
