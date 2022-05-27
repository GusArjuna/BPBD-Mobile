import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Mojokerto extends StatefulWidget {
  const Mojokerto({Key? key}) : super(key: key);

  @override
  State<Mojokerto> createState() => _MojokertoState();
}

class _MojokertoState extends State<Mojokerto> {
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
                        width: 95,
                      ),
                      Text(
                        "Kota Mojokerto",
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
                          "Kode Area (0321)",
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
                              "(0321) 330400 Polresta",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0321330400');
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
                              "(0321) 321752 Dinas Kesehatan",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0321321752');
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
                              "081235966820 Pemadam Kebakaran",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('6281235966820');
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
                              "(0321) 381568 BPBD",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0321381568');
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
                              "(0321) 5282255 Kominfo",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('03215282255');
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
                              "(0321) 123123 PLN",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.justify,
                            ),
                            IconButton(
                              onPressed: () async {
                                await call('0321123123');
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
