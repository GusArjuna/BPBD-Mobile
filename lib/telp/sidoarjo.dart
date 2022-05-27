import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sidoarjo extends StatefulWidget {
  const Sidoarjo({Key? key}) : super(key: key);

  @override
  State<Sidoarjo> createState() => _SidoarjoState();
}

class _SidoarjoState extends State<Sidoarjo> {
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
                        width: 120,
                      ),
                      Text(
                        "Sidoarjo",
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
                              "(031) 99010222 Polresta",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('03199010222');
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
                              "(031) 8941051 Dinas Kesehatan",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0318941051');
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
                              "(031) 8953200 Pemadam Kebakaran",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0318953200');
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
                              "(031) 8953200 BPBD",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0318953200');
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
                              "(031) 8073915 Kominfo",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0318073915');
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
                              "(031) 8924894 PLN",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0318924894');
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
