import 'package:flutter/material.dart';

Widget Pick(BuildContext context, VoidCallback list, VoidCallback post) {
  return Container(
    height: 200,
    padding: EdgeInsets.only(top: 16, left: 24, right: 24),
    child: Column(
      children: [
        Container(
          width: 40,
          height: 5,
          color: Colors.grey.shade400,
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: list,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/list.png',
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "List A Service",
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 32, 57),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 40,
                color: Color.fromARGB(255, 1, 32, 57),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: post,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/post.png',
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Post A Request",
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 32, 57),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 40,
                color: Color.fromARGB(255, 1, 32, 57),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
