import 'package:flutter/material.dart';

class OpeningHours extends StatelessWidget {
  const OpeningHours({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 40,
              child: Text(
                "Mon",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 33,
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'From',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
            Container(
              width: 150,
              height: 33,
              margin: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'To',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Container(
              width: 40,
              child: Text(
                "Tues",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 33,
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'From',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
            Container(
              width: 150,
              height: 33,
              margin: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'To',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Container(
              width: 40,
              child: Text(
                "Wed",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 33,
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'From',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
            Container(
              width: 150,
              height: 33,
              margin: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'To',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Container(
              width: 40,
              child: Text(
                "Thur",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 33,
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'From',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
            Container(
              width: 150,
              height: 33,
              margin: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'To',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Container(
              width: 40,
              child: Text(
                "Fri",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 33,
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'From',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
            Container(
              width: 150,
              height: 33,
              margin: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'To',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Container(
              width: 40,
              child: Text(
                "Sat",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 33,
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'From',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
            Container(
              width: 150,
              height: 33,
              margin: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'To',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Container(
              width: 40,
              child: Text(
                "Sun",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 33,
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'From',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
            Container(
              width: 150,
              height: 33,
              margin: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'To',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade400))),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (val) {},
              side: BorderSide(
                color: Colors.grey.shade300,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text("Open 24/7")
          ],
        ),
      ],
    );
  }
}
