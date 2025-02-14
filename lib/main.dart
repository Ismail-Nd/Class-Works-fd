import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Form',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 100.0),
            child: Text(
              'Flutter Form',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.deepPurple),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.deepPurple),
              ),
              obscureText: true,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 5.0),
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0)),
                  textStyle: MaterialStateProperty.all(TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                  )),
                ),
                child: Text('Login'),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
