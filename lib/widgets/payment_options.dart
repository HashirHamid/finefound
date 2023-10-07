import 'package:flutter/material.dart';

class PaymentOptions extends StatelessWidget {
  final VoidCallback function;
  final String image;
  final String title;
  final String subtitle;

  PaymentOptions(
      {required this.function,
      required this.image,
      required this.title,
      required this.subtitle,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8)),
        child: ListTile(
          dense: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          leading: Image.asset(
            image,
            height: 23,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            size: 28,
            color: Colors.grey.shade500,
          ),
        ),
      ),
    );
  }
}
