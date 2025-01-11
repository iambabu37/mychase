import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Tabbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(length: 4, child:TabBarDemo())
      
    );
  }
}
