import 'package:flutter/material.dart';

import 'pages/landing.dart';

void main() {
  runApp(VitaguideApp());
}

class VitaguideApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: VitaguideLandingPage(),
    );
  }
}


