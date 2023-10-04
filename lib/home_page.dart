import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String input = '';

  Widget button(String layout, int value) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          setState(() {
            input += value.toString();
          });
        },
        child: Text(layout),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Num Pass'),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(input),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black87,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(),
                      ),
                      button('ABC', 2),
                      button('DEF', 3),
                    ],
                  ),
                  Row(
                    children: [
                      button('GHI', 4),
                      button('JKL', 5),
                      button('MNO', 6),
                    ],
                  ),
                  Row(
                    children: [
                      button('PQRS', 7),
                      button('TUV', 8),
                      button('WXYZ', 9),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          child: SizedBox(),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Expanded(
                        child: Icon(Icons.backspace),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white70,
    );
  }
}