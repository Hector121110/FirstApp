import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color accessibilityColor = Colors.black;
  Color alarmColor = Colors.black;
  Color phoneAndroidColor = Colors.black;
  Color phoneIphoneColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mc Flutter'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 60.0,
                ),
                SizedBox(
                  width: 2.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Flutter McFlutter',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Experienced App Developer',
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  '123 Main Street',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Text(
                  '(415) 555-0198',
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.accessibility, size: 30.0),
                onPressed: () {
                  setState(() {
                    accessibilityColor = (accessibilityColor == Colors.black)
                        ? Colors.indigo
                        : Colors.black;
                  });
                },
                color: accessibilityColor,
              ),
              IconButton(
                icon: const Icon(Icons.alarm, size: 30.0),
                onPressed: () {
                  setState(() {
                    alarmColor = (alarmColor == Colors.black)
                        ? Colors.indigo
                        : Colors.black;
                  });
                },
                color: alarmColor,
              ),
              IconButton(
                icon: const Icon(Icons.phone_android, size: 30.0),
                onPressed: () {
                  setState(() {
                    phoneAndroidColor = (phoneAndroidColor == Colors.black)
                        ? Colors.indigo
                        : Colors.black;
                  });
                },
                color: phoneAndroidColor,
              ),
              IconButton(
                icon: const Icon(Icons.phone_iphone, size: 30.0),
                onPressed: () {
                  setState(() {
                    phoneIphoneColor = (phoneIphoneColor == Colors.black)
                        ? Colors.indigo
                        : Colors.black;
                  });
                },
                color: phoneIphoneColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
