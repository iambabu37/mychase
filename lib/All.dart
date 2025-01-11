import 'package:flutter/material.dart';

class All extends StatelessWidget {
  const All({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              "Resistance Profile",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
          Divider(
            color: Colors.grey, // Optional: customize color
            thickness: 1.0, // Line thickness
            height: 1, // Total height including spacing
          ),

          Row(
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
                            "SUSCEPTIBLE",
                            style: TextStyle(color: Colors.green, fontSize: 18),
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
                            "RESISTANT",
                            style: TextStyle(color: Colors.red, fontSize: 18),
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
        ],
      ),
    );
  }
}
