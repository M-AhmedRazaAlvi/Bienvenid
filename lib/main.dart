import 'package:flutter/material.dart';

import 'Screens/auth/id_verify.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        // ignore: deprecated_member_use
        //accentColor: Color(0xFFD8ECF1),
        // scaffoldBackgroundColor: Color(0xFF3F5F7),
      ),
      home: IdVerify(),
    );
  }
}
