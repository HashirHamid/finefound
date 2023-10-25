import 'package:finefound/constants/colors.dart';
import 'package:flutter/material.dart';

Widget reviewModal(BuildContext context) {
  return Container(
    height: 300,
    padding: EdgeInsets.only(top: 18, left: 20, right: 20, bottom: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
    ),
    child: Column(children: [
      Text(
        "Write a Review",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Text(
            "Rate Us",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 50,
          ),
          Icon(
            Icons.star_outline,
            color: Colors.blue,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.star_outline, color: Colors.blue),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.star_outline, color: Colors.blue),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.star_outline, color: Colors.blue),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.star_outline, color: Colors.blue),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Message (Optional)",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
          minLines: null,
          maxLines: 2,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(8)),
              hintText: 'Message here',
              hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 12))),
      GestureDetector(
        onTap: () {
          // openDialog(context);
        },
        child: Container(
          margin: EdgeInsets.only(top: 20, bottom: 5, left: 10, right: 10),
          height: 50,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(context).colorScheme.primary),
          child: Center(
              child: Text(
            "Submit Review",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          )),
        ),
      ),
    ]),
  );
}
