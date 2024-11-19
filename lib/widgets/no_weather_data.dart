import 'package:flutter/material.dart';

class NoWeatherData extends StatelessWidget {
  const NoWeatherData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'there is no weather 😒 start',
              style: TextStyle(fontSize: 28),
            ),
            Text(
              'searching now 🔎',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
