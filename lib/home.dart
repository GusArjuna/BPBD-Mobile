import 'package:bpbd/lapor.dart';
import 'package:bpbd/log.dart';
import 'package:bpbd/telp/telp.dart';
import 'package:bpbd/weather.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  child: Text(
                    "Dashboard",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 8,
              child: Container(
                  child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(15),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/weather.png"),
                                        fit: BoxFit.cover)),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    splashColor: Colors.orange,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Weather()),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Text(
                                "Peringatan Dini",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(15),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/log.png"),
                                        fit: BoxFit.cover)),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    splashColor: Colors.orange,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const Log()),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Text(
                                "Log Kejadian",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(15),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/telp.png"),
                                        fit: BoxFit.cover)),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    splashColor: Colors.orange,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Telephone()),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Text(
                                "Nomor Penting",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(15),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/lapor.png"),
                                        fit: BoxFit.cover)),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    splashColor: Colors.orange,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Lapor()),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Text(
                                "Lapor Kejadian",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
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
