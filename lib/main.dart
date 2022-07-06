import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: palette(),
      )
  );
}

class palette extends StatefulWidget {
  const palette({Key? key}) : super(key: key);

  @override
  _paletteState createState() => _paletteState();
}

class _paletteState extends State<palette> {
  Color m1 = Colors.purple;
  Color m2 = Colors.pink;
  Color m3 = Colors.blue;
  Color m4 = Colors.green;
  Color m5 = Colors.cyanAccent;
  Color m6 = Colors.deepPurpleAccent;

  Random r1 = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffffffff),
                Color(0xffd8e6f4),
              ],
            ),
          ),
          child:  Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 20),
                child: const Text(
                  "Color Palette\n Generator",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3bb3f9),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      color: m1,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    color: m2,
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    color: m3,
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    color: m4,
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    color: m5,
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      color: m6,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        m1 = Color.fromARGB(r1.nextInt(300), r1.nextInt(300),
                            r1.nextInt(300), r1.nextInt(300));
                        m2 = Color.fromARGB(r1.nextInt(300), r1.nextInt(300),
                            r1.nextInt(300), r1.nextInt(300));
                        m3 = Color.fromARGB(r1.nextInt(300), r1.nextInt(300),
                            r1.nextInt(300), r1.nextInt(300));
                        m4 = Color.fromARGB(r1.nextInt(300), r1.nextInt(300),
                            r1.nextInt(300), r1.nextInt(300));
                        m5 = Color.fromARGB(r1.nextInt(300), r1.nextInt(300),
                            r1.nextInt(300), r1.nextInt(300));
                        m6 = Color.fromARGB(r1.nextInt(300), r1.nextInt(300),
                            r1.nextInt(300), r1.nextInt(300));
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 200,
                      child: Text(
                        "Generator",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3bb3f9),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff3bb3f9), width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
