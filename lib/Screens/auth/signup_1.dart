import 'package:daily_exercise_app/Screens/auth/signup_2.dart';
import 'package:daily_exercise_app/Screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Signup1 extends StatefulWidget {
  const Signup1({Key? key}) : super(key: key);

  @override
  _Signup1State createState() => _Signup1State();
}

class _Signup1State extends State<Signup1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 124, 86, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(248, 124, 86, 1),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/images/arrow-left-thick.png')),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 40, bottom: 40),
                  height: MediaQuery.of(context).size.height * 0.26,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Image.asset('assets/images/Intersection 12.png',
                      fit: BoxFit.fill)),
              /////////////////////////////////////////////////////////////////////////////////
              textInputData(
                ImgUrl: 'assets/images/email.png',
                hinttext: "Enter Your Email",
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
                text: false,
              ),
              textInputData(
                ImgUrl: 'assets/images/key-variant.png',
                hinttext: "Enter Password",
                inputType: TextInputType.visiblePassword,
                inputAction: TextInputAction.none,
                text: true,
              ),

              ////////////////////////////////////////////////////////////////////////////////////
              Container(
                margin: EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 227, 154, 1),
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HOME()));
                  },
                  child: Text(
                    "Iniciar Sesión",
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 0.6,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup2()));
                  },
                  child: Text(
                    '¿Primera vez? ¡Regístrate aquí!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class textInputData extends StatelessWidget {
  final ImgUrl;
  final String hinttext;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final text;
  const textInputData({
    Key? key,
    required this.ImgUrl,
    required this.hinttext,
    required this.inputType,
    required this.inputAction,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      margin: EdgeInsets.only(top: 10, bottom: 10),
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            ImgUrl,
            color: Color.fromRGBO(122, 112, 112, 1),
          ),
          Expanded(
            //flex: 2,
            child: TextFormField(
                // textAlign: TextAlign.left,
                decoration: InputDecoration(
                    contentPadding:
                        new EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    border: InputBorder.none,
                    hintText: hinttext,
                    hintStyle: TextStyle(fontSize: 14)),
                keyboardType: inputType,
                textInputAction: inputAction,
                obscureText: text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                }),
          ),
        ],
      ),
    );
  }
}
