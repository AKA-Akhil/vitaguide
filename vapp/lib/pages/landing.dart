import 'package:flutter/material.dart';

class VitaguideLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vitaguide"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12.0), 
          child: Card(
            color: Colors.grey[900], 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), 
            ),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(24.0), 
              child: Column(
                mainAxisSize: MainAxisSize.min, 
                children: [
                  
                  Text(
                    "Welcome To Vitaguide",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),

                  
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, 
                      foregroundColor: Colors.white, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text("Register"),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, 
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text("Login as User"),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800], 
                      foregroundColor: Colors.white, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text("Login as Admin"),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber, 
                      foregroundColor: Colors.black, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text("Visit Guest Home"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}