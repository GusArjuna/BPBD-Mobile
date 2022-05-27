import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Lamongan extends StatefulWidget {
  const Lamongan({Key? key}) : super(key: key);

  @override
  State<Lamongan> createState() => _LamonganState();
}

class _LamonganState extends State<Lamongan> {
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
                        width: 115,
                      ),
                      Text(
                        "Lamongan",
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
                          "Kode Area (0322)",
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
                              "(0322) 4673636 Polrestabes",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('03224673636');
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
                              "(0322) 321338 Dinas Kesehatan",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0322321338');
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
                              "(0322) 321113 Pemadam Kebakaran",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0322321113');
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
                              "(0322) 317730 BPBD",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0322317730');
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
                              "(0322) 321168 Kominfo",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0322321168');
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
                              "(0322) 646464 PLN",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0322646464');
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
