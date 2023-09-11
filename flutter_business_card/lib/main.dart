import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.account_circle, size: 50),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Sydney Kim',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Text('Experienced App Developer'),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '123 Main Street',
            ),
            Text(
              '(415) 555-0198',
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.accessibility),
            Icon(Icons.timer),
            Icon(Icons.phone_android),
            Icon(Icons.phone_iphone),
          ],
        ),
      ],
    );
  }
}


class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffeeeeee),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Business Card'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: MyWidget(),
        ),
      ),
    );
  }
}
