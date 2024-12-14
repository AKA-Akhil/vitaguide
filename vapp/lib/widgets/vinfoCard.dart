import 'package:flutter/material.dart';

class VinfoCard extends StatelessWidget {
  final String vitaminName; // Name of the vitamin
  final String benefits;    // Benefits of the vitamin
  final String sources;     // Sources of the vitamin
  final String rda;         // Recommended daily allowance (RDA)

  const VinfoCard({
    Key? key,
    required this.vitaminName,
    required this.benefits,
    required this.sources,
    required this.rda,
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

                // Benefits
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    children: [
                      TextSpan(
                        text: "Benefits: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: benefits),
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
                        text: "Sources: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: sources),
                    ],
                  ),
                ),
                const SizedBox(height: 8),

                // RDA
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    children: [
                      TextSpan(
                        text: "RDA: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: rda),
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
