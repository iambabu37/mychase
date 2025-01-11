import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  const Topbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.red,
      height: 80,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/logo-top.png", height: 80, width: 100),
              SizedBox(
                width: 400,
                child: Row(
                  children: [
                    Text('All'),
                    Spacer(),
                    Text("Drug"),
                    Spacer(),
                    Text("Evidence"),
                    Spacer(),
                    Text('Species'),
                  ],
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(right:30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 30,
                    
                    children: [
                      Text('save'),
                        Text("add")
                         ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
