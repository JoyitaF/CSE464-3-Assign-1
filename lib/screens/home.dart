import 'package:flutter/material.dart';
import 'package:planit/screens/second_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          const Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Welcome to',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Plan IT',
                    style: TextStyle(fontWeight: FontWeight.w900 , fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Your Personal task management \n and planning solution',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondScreen())
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10 ,horizontal: 40),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(221, 18, 18, 18),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: const Text(
                      "Let's get started",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300 ,color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 90),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
