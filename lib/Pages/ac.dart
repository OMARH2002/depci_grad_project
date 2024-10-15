import 'package:depci_grad_project/Pages/Checkout_one.dart';
import 'package:flutter/material.dart';

class AC extends StatefulWidget {
  @override
  _ACState createState() => _ACState();
}

class _ACState extends State<AC> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ac Services'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Basic Service
            buildServiceCard(
              title: 'AC Diagnostic Check',
              description: [
                'Perform a comprehensive diagnostic to identify issues with the AC system',

              'Service Duration: 30 minutes - 1 hour',
              ],
              price: 'Est: 500 - 1,000 EGP',
              imageUrl: 'assets/images/AC Diagnostic Check.jpg',
              onAdd: () {
                Navigator.pushNamed(context, '/bookingform');
              },
            ),
            SizedBox(height: 10),

            // Standard Service
            buildServiceCard(
              title: 'AC Recharge',
              description: [
                ' Recharge the AC system with the correct amount of ferion gas to restore cooling efficiency.',
               'Service Duration: 1-2 hours',
                'Price Depends on car model and ferion type'
              ],
              price: 'Est: 1,500 - 3,500 EGP',
              imageUrl: 'assets/images/AC Recharge.jpg',
              onAdd: () {
                Navigator.pushNamed(context, '/bookingform');
              },
            ),
            SizedBox(height: 10),

            // Comprehensive Service
            buildServiceCard(
              title: 'AC Compressor Replacement',
              description: [
               'Replace AC compressor to restore proper air conditioning functionality.',
                'Service Duration: 2-4 hours.',
                'Price includes compressor and labor costs'
              ],
              price: 'Est: 10,000 - 25,000 EGP',
              imageUrl: 'assets/images/AC Compressor Replacement.jpeg',
              onAdd: () {
                Navigator.pushNamed(context, '/bookingform');
              },
            ),

            SizedBox(height: 10),

            // Comprehensive Service
            buildServiceCard(
              title: 'AC System Leak Repair',
              description: [
                ' Detect and repair leaks in the AC system.',
                'Service Duration: 1-3 hours',
                'Price depending on the extent of the leak'
              ],
              price: 'Est: 1,500 - 5,000 EGP',
              imageUrl: 'assets/images/AC System Leak Repair.jpg',
              onAdd: () {
                Navigator.pushNamed(context, '/bookingform');
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build each service card
  Widget buildServiceCard({
    required String title,
    required List<String> description,
    required String price,
    required String imageUrl,
    required VoidCallback onAdd,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Service Description (Expanded to avoid overflow)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: description
                        .map((desc) => Text('• $desc'))
                        .toList(),
                  ),
                  SizedBox(height: 8),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),

            // Image and book Button
            SizedBox(width: 16), // Add some space between text and image
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imageUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: onAdd,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('Book', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}
