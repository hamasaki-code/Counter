import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  int _counter = 0;

  void _addcounter() {
    setState(() {
      _counter++;
    });
  }

  void _downcounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetcounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter',
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _downcounter,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    child: Text(
                      '-1',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: _resetcounter,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                      ),
                      child: Text(
                        'Clear',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _addcounter,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: Text(
                      '+1',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
