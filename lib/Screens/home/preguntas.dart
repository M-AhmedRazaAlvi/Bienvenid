import 'package:daily_exercise_app/Screens/Dashborad/mensajes.dart';

import 'package:flutter/material.dart';

import 'de_video.dart';
import 'home.dart';
import 'notifs.dart';

class Preguntas extends StatefulWidget {
  const Preguntas({Key? key}) : super(key: key);

  @override
  _PreguntasState createState() => _PreguntasState();
}

class _PreguntasState extends State<Preguntas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.17,
        backgroundColor: Colors.white,
        title: Container(
          // color: Colors.grey,
          height: 110,
          width: 110,
          child: Image.asset(
            'assets/images/Intersection 12.png',
          ),
        ),
        actions: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 50, top: 30),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.5,
                // color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Notifs()));
                            },
                            child:
                                Image.asset('assets/images/Group 2543.png'))),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HOME()));
                      },
                      child: Icon(
                        Icons.home,
                        color: Color.fromRGBO(248, 124, 86, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              preguntas(
                imageUrl: 'assets/images/Intersection 13.png',
                text: 'Alam Gabriel',
                imageUrl1: 'assets/images/Group 2526.png',
              ),
              preguntas(
                imageUrl: 'assets/images/Ellipse 1.png',
                text: 'Beverly',
                imageUrl1: 'assets/images/arrow-left-thick.png',
              ),
              preguntas(
                imageUrl: 'assets/images/Ellipse 11.png',
                text: 'Terry Dean',
                imageUrl1: 'assets/images/Group 2526.png',
              ),
              preguntas(
                imageUrl: 'assets/images/Ellipse 12.png',
                text: 'Emma Woodkin',
                imageUrl1: 'assets/images/arrow-left-thick.png',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
            color: Color.fromRGBO(248, 124, 86, 1),
            borderRadius:
                BorderRadius.vertical(top: Radius.elliptical(200, 20))),
      ),
    );
  }
}

class preguntas extends StatelessWidget {
  final imageUrl;
  final String text;
  final imageUrl1;
  const preguntas({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.imageUrl1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      //color: Colors.grey,
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 50,
            width: 50,
            child: Image.asset(imageUrl, fit: BoxFit.cover),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 40,
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(child: Text(text)),
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset(imageUrl1),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            height: 40,
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DeVideo()));
                  },
                  child: Icon(Icons.phone,
                      color: Color.fromRGBO(248, 124, 86, 1), size: 30),
                )),
                Container(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mensajes()));
                  },
                  child: Icon(Icons.email,
                      color: Color.fromRGBO(211, 216, 224, 1), size: 30),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
