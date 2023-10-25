import 'package:finefound/constants/colors.dart';
import 'package:flutter/material.dart';

Widget Complete(BuildContext context) {
  return Container(
    color: Theme.of(context).primaryColor,
    height: 300,
    padding: EdgeInsets.only(top: 16, left: 28, right: 28),
    child: Column(
      children: [
        Container(
          width: 40,
          height: 4,
          decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(25)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Complete Order",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        SizedBox(
          height: 10,
        ),
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            // with no TextStyle it will have default text style
            text: 'Are you sure want to reject order ',

            children: <TextSpan>[
              TextSpan(
                  text: '#1779', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                text: ' as\ncomplete?',
                style: TextStyle(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(context).colorScheme.primary),
          child: Center(
              child: Text(
            "Complete",
            style: TextStyle(color: Colors.white),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 1, color: const Color.fromARGB(255, 208, 208, 208)),
              borderRadius: BorderRadius.circular(25),
              color: Colors.white),
          child: Center(
              child: Text(
            "Decline",
            style: TextStyle(color: Colors.black),
          )),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          width: 120,
          height: 4,
          decoration: BoxDecoration(
              color: Colors.black54, borderRadius: BorderRadius.circular(25)),
        ),
      ],
    ),
  );
}
