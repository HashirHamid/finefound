import 'package:flutter/material.dart';

Widget Pick(BuildContext context, VoidCallback list, VoidCallback post) {
  return Container(
    height: 200,
    color: Theme.of(context).primaryColor,
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
                    color: Theme.of(context).splashColor,
                    width: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "List A Service",
                    style: TextStyle(
                        color: Theme.of(context).splashColor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 40,
                color: Theme.of(context).splashColor,
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
                    color: Theme.of(context).splashColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Post A Request",
                    style: TextStyle(
                        color: Theme.of(context).splashColor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 40,
                color: Theme.of(context).splashColor,
              )
            ],
          ),
        ),
      ],
    ),
  );
}
