import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Gresik extends StatefulWidget {
  const Gresik({Key? key}) : super(key: key);

  @override
  State<Gresik> createState() => _GresikState();
}

class _GresikState extends State<Gresik> {
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
                      ),
                      Container(
                        width: 110,
                      ),
                      Text(
                        "Kota Gresik",
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
                          margin: EdgeInsets.all(15),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/telp.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Text(
                          "Kode Area (031)",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.justify,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "(031) 3974110 Polrestabes",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0313974110');
                              },
                              icon: Icon(Icons.call),
                              splashColor: Colors.orange,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "(031) 3951395 Dinas Kesehatan",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0313951395');
                              },
                              icon: Icon(Icons.call),
                              splashColor: Colors.orange,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "(031) 3985300 Pemadam Kebakaran",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0313985300');
                              },
                              icon: Icon(Icons.call),
                              splashColor: Colors.orange,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "(031) 8666611 SAR",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0318666611');
                              },
                              icon: Icon(Icons.call),
                              splashColor: Colors.orange,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "(031) 3985151 BPBD",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0313985151');
                              },
                              icon: Icon(Icons.call),
                              splashColor: Colors.orange,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "(031) 3975454 Kominfo",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0313975454');
                              },
                              icon: Icon(Icons.call),
                              splashColor: Colors.orange,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "(031) 3974291 PLN",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0313974291');
                              },
                              icon: Icon(Icons.call),
                              splashColor: Colors.orange,
                              color: Colors.white,
                            ),
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

Future<void> call(String numbers) async {
  await launch('tel:$numbers');
}
