import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ""),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  //int _c = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decremantCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //backgroundColor: Colors.white,
          title: Text(widget.title),
          leading: const Icon(Icons.arrow_back),
          actions: const [Icon(Icons.favorite_border)]),
      // onPressed: () {},
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://ik.imagekit.io/2xkwa8s1i/img/npl_modified_images/atticus/sofa_WLCHRATCFVBL/sofa_WLCHRATCFVBL_1.jpg?tr=w-576',
              width: 1000,
              height: 500,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Room Sofa',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: _decremantCounter,
                  child: const Icon(Icons.remove),
                ),
                SizedBox(width: 10),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Icon(
                    Icons.add,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: <Widget>[
                buildCircle(Colors.blue),
                SizedBox(width: 8),
                buildCircle(Colors.brown),
                SizedBox(width: 8),
                buildCircle(Colors.black),
              ],
            ),
            SizedBox(height: 8),
            const Text(
              'Drawing Room Wooden Sofa Set is solid wooden sofa set which you can contrast the cushion of any color.jdhfbfbfvhvfvfbvhvhgwevfwvvwgevghcvhgchwcvhvchcvbcmdncscfvgwbhrfiwefkjwbfh The good sight caused us to the furniture help us relax for a longer time.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '¥2500',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                //Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Add to cart'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: (Colors.blue),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCircle(Color color) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
