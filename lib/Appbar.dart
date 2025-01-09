
import 'package:flutter/material.dart';
import 'Home.dart';
import './customappbar.dart';
import './topbar.dart';

void main() => runApp(myAppbar());

class myAppbar extends StatelessWidget {
  const myAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: Customappbar(),
        body: Column(
          
          children: [
            Topbar(),
            SizedBox.expand(
              child: Image.asset(
                "assets/banner_01.gif",
                height: 1000,
                width: double.infinity,
              ),
            ),
            // SizedBox.expand(
            //   child: Image.asset("assets/banner_01.gif", fit: BoxFit.cover),
            // ),
            Positioned(
              // Corrected spelling
              top: 250, // Added positioning
              left: 600, // Added positioning
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 200,
                width: 200,
                // color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            minimumSize: Size(double.infinity, 60),
                            backgroundColor: Colors.green,
                          ),
                          child: Text("Home"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            minimumSize: Size(double.infinity, 60),
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {},
                          child: Text("About"),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            minimumSize: Size(double.infinity, 60),
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {},
                          child: Text("Feed back"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
