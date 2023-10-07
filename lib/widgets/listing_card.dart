import 'package:flutter/material.dart';

class ListingCard extends StatelessWidget {
  ListingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(7),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.blue.shade100),
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(13, 0, 140, 255)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Image.asset(
              'assets/images/service.png',
              width: 45,
              height: 45,
            ),
            SizedBox(
              width: 5,
            ),
            Wrap(
              direction: Axis.vertical,
              children: [
                Text(
                  "Barber",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  "lorem ibsum",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ],
        ),
        Wrap(
          direction: Axis.vertical,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(120, 255, 235, 59)),
              child: Text(
                "Pending",
                style: TextStyle(fontSize: 11),
              ),
            ),
            Text(
              "18/03/2023",
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
        Wrap(
          direction: Axis.vertical,
          children: [
            Row(
              children: [
                Image.asset("assets/icons/Edit.png"),
                SizedBox(
                  width: 3,
                ),
                Image.asset(
                  "assets/icons/eye.png",
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.star_outline,
                  color: Colors.grey,
                )
              ],
            ),
            Text("")
          ],
        )
      ]),
    );
  }
}
