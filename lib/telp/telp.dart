import 'package:bpbd/telp/gresik.dart';
import 'package:bpbd/telp/lamongan.dart';
import 'package:bpbd/telp/mojokerto.dart';
import 'package:bpbd/telp/sidoarjo.dart';
import 'package:bpbd/telp/surabaya.dart';
import 'package:flutter/material.dart';

class Telephone extends StatefulWidget {
  const Telephone({Key? key}) : super(key: key);

  @override
  State<Telephone> createState() => _TelephoneState();
}

class _TelephoneState extends State<Telephone> {
  List<Widget> kotaku = [];

  _TelephoneState() {
    kotaku.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("SURABAYA", style: TextStyle(fontSize: 14, color: Colors.white)),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Surabaya()),
              );
            },
            icon: Icon(Icons.keyboard_arrow_right),
            splashColor: Colors.orange,
            color: Colors.white,
          ),
        ],
      ),
    );
    kotaku.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("SIDOARJO", style: TextStyle(fontSize: 14, color: Colors.white)),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sidoarjo()),
              );
            },
            icon: Icon(Icons.keyboard_arrow_right),
            splashColor: Colors.orange,
            color: Colors.white,
          ),
        ],
      ),
    );
    kotaku.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("KOTA MOJOKERTO",
              style: TextStyle(fontSize: 14, color: Colors.white)),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Mojokerto()),
              );
            },
            icon: Icon(Icons.keyboard_arrow_right),
            splashColor: Colors.orange,
            color: Colors.white,
          ),
        ],
      ),
    );
    kotaku.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("LAMONGAN", style: TextStyle(fontSize: 14, color: Colors.white)),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Lamongan()),
              );
            },
            icon: Icon(Icons.keyboard_arrow_right),
            splashColor: Colors.orange,
            color: Colors.white,
          ),
        ],
      ),
    );
    kotaku.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("GRESIK", style: TextStyle(fontSize: 14, color: Colors.white)),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Gresik()),
              );
            },
            icon: Icon(Icons.keyboard_arrow_right),
            splashColor: Colors.orange,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
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
                        "Nomor Penting",
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
                          "Nomor Umum",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.justify,
                        ),
                        Container(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("112 Call Center",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white)),
                            Container(
                              width: 100,
                            ),
                            Text("115 SAR",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white)),
                          ],
                        ),
                        Container(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("119 Ambulans",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white)),
                            Container(
                              width: 105,
                            ),
                            Text("117 BNPB",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white)),
                          ],
                        ),
                        Container(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("113 Pemadam Kebakaran",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white)),
                            Container(
                              width: 35,
                            ),
                            Text("110 Polisi",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white)),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(15),
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.orange.shade800,
                          ),
                          child: ListView(
                            children: kotaku,
                          ),
                        )
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
