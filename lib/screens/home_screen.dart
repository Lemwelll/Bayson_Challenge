import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wage Calculator Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/calculator');
              },
              child: Text('Go to Wage Calculator'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/history');
              },
              child: Text('View Wage History'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: Text('Settings'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}
