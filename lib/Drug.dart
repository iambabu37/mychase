import 'package:flutter/material.dart';

class Drug extends StatelessWidget {
  const Drug({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.badge),
                        SizedBox(width: 5),
                        Text(
                          "FIRST LINE DRUGS",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text("Ofloxacin"),
                        Text("Moxifloaxacin"),
                        Text("Kanamycin"),
                        Text("Ethambutol"),
                        Text("Streptomycin"),
                        Text("Ciprofloxacin"),
                        Text("Rifampicin"),
                        Text("Amikacin"),
                        Text("Capreomycin"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.r_mobiledata),
                        SizedBox(width: 3),
                        Text(
                          "SECOND LINE DRUGS",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text("Isoniazid"),
                         Text("Pyraxinamide")],
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
