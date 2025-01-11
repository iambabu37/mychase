import 'package:flutter/material.dart';

class Species extends StatelessWidget {
  const Species({super.key});
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
              flex: 4,
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
                          "SPECIES",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        Divider(
                          color: Colors.grey, // Optional: customize color
                          thickness: 1.0, // Line thickness
                          height: 1, // Total height including spacing
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
                        Text("Mycobacterium tuberclosis (lineage 4.10 )"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Expanded(
            //   flex: 2,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Padding(
            //         padding: EdgeInsets.all(10),
            //         child: Row(
            //           children: [
            //             Icon(Icons.r_mobiledata),
            //             SizedBox(width: 3),
            //             Text(
            //               "SECOND LINE DRUGS",
            //               style: TextStyle(color: Colors.blue, fontSize: 18),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.only(left: 30),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           spacing: 10,
            //           children: [
            //             Text("Isoniazid"),
            //              Text("Pyraxinamide")],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
