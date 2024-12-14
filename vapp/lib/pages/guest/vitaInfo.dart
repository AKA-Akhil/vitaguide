import 'dart:ui';
import 'package:flutter/material.dart';

import '../../widgets/vinfoCard.dart';
import '../landing.dart';

class VitaguideInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), 
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 12,right: 12,bottom: 12,top:30),
          child: Column(
            children: [
              VinfoCard(
                vitaminName: "Vitamin B12 (Cobalamin)",
                benefits: "Important for nerve function and red blood cell production.",
                sources: "Meat, fish, dairy products, and fortified cereals.",
                rda: "0.9-1.8 mcg for children (depending on age).",
              ),
              SizedBox(height: 20),
              VinfoCard(
                vitaminName: "Vitamin C (Ascorbic Acid)",
                benefits: "Supports immune function and helps absorb iron.",
                sources: "Citrus fruits, berries, and leafy greens.",
                rda: "15-75 mg for children (depending on age).",
              ),
              SizedBox(height: 24),
              VinfoCard(
                vitaminName: "Vitamin C (Ascorbic Acid)",
                benefits: "Supports immune function and helps absorb iron.",
                sources: "Citrus fruits, berries, and leafy greens.",
                rda: "15-75 mg for children (depending on age).",
              ),
            ],
          ),
        ),
      ),
    );
  }
}