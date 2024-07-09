import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'There is no weather 😞 start',
              style: TextStyle(
                fontSize: 29,
              ),
            ),
            Text(
              'Searching now 🔍',
              style: TextStyle(
                fontSize: 29,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
