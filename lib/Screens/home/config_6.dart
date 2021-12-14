import 'package:daily_exercise_app/Screens/home/preguntas.dart';
import 'package:flutter/material.dart';

import 'config_4.dart';
import 'home.dart';

class Config6 extends StatefulWidget {
  const Config6({Key? key}) : super(key: key);

  @override
  _Config6State createState() => _Config6State();
}

class _Config6State extends State<Config6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HOME()));
          },
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Preguntas()));
            },
            child: Icon(
              Icons.home,
              color: Color.fromRGBO(248, 124, 86, 1),
            ),
          ),
        ),
        actions: [
          Image.asset('assets/images/Group 2543.png'),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Config4()));
                  },
                  child: Text("Usuario silenciado",
                      style: TextStyle(
                          color: Color.fromRGBO(248, 124, 86, 1),
                          fontSize: 20)),
                ),
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
                BorderRadius.vertical(top: Radius.elliptical(200, 30))),
      ),
    );
  }
}
