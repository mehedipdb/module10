import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, World!',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 18),
            ),
            // Optional: Add an image from URL
            Image.network(
              'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png', // Replace with your image URL
              height: 150,
              width: 150,
            ),
            // Optional: Add an image from assets
            // Image.asset(
            //   'assets/your_image.png', // Replace with your image path
            //   height: 150,
            //   width: 150,
            // ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(content: Text('Button Pressed!'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text('Press Me'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Button color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
