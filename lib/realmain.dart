import 'package:flutter/material.dart';

void main() => runApp(Mypage());

class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('first one'), backgroundColor: Colors.blue),
        body: SizedBox(
          height: 100,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset("assets/logo-top.png", height: 100, width: 140),
                  Row(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
