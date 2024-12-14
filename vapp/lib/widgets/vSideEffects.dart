import 'package:flutter/material.dart';

class VSideEffectsCard extends StatelessWidget {
  final String vitaminName; // Name of the vitamin
  final String symptoms;    // symptoms of the vitamin
  final String role;     // Sources of the vitamin      

  const VSideEffectsCard({
    Key? key,
    required this.vitaminName,
    required this.symptoms,
    required this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900], // Dark mode card background
      elevation: 4, // Card shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image at the top
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              'assets/images/vitaminsinfo.jpg', // Image path
              fit: BoxFit.cover,
              height: 150,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Vitamin name (blue color)
                Text(
                  vitaminName,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                // symptoms
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    children: [
                      TextSpan(
                        text: "symptoms: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: symptoms),
                    ],
                  ),
                ),
                const SizedBox(height: 8),

                // Sources
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    children: [
                      TextSpan(
                        text: "Role: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: role),
                    ],
                  ),
                ),
               
                const SizedBox(height: 12),

                // Learn More Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Add action when button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text("Learn More"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
