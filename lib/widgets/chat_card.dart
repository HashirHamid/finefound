import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final String title;
  final String message;
  final String time;
  final String image;
  final VoidCallback function;
  ChatCard({
    required this.title,
    required this.function,
    required this.image,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: ListTile(
        tileColor: Theme.of(context).primaryColor,
        contentPadding: EdgeInsets.all(1),
        visualDensity: VisualDensity.compact,
        titleAlignment: ListTileTitleAlignment.titleHeight,
        leading: CircleAvatar(
          radius: 23,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(image)),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          message,
          style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
        ),
        trailing:
            Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
          Text(
            time,
            style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
          ),
          Icon(
            Icons.keyboard_arrow_right,
            color: Colors.grey.shade500,
          )
        ]),
      ),
    );
  }
}
