import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:vapp/widgets/vSideEffects.dart';

import '../../widgets/vinfoCard.dart';
import '../landing.dart';

class VitaguideSideEffects extends StatelessWidget {
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
              VSideEffectsCard(
                vitaminName: "Vitamin B12 (Cobalamin)",
                symptoms: "Important for nerve function and red blood cell production.",
                role: "Meat, fish, dairy products, and fortified cereals.",
              ),
              SizedBox(height: 24),
              VSideEffectsCard(
                vitaminName: "Vitamin C (Ascorbic Acid)",
                symptoms: "Supports immune function and helps absorb iron.",
                role: "Citrus fruits, berries, and leafy greens.",
              ),
              SizedBox(height: 24),
              VSideEffectsCard(
                vitaminName: "Vitamin C (Ascorbic Acid)",
                symptoms: "Supports immune function and helps absorb iron.",
                role: "Citrus fruits, berries, and leafy greens.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}