import 'package:flutter/material.dart';

class ProfileOpt extends StatefulWidget {
  final String icon;
  final String title;
  final VoidCallback function;

  ProfileOpt(this.icon, this.title, this.function);

  @override
  State<ProfileOpt> createState() => _ProfileOptState();
}

class _ProfileOptState extends State<ProfileOpt> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.function,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 22,
                    width: 22,
                    child: Image.asset(
                      widget.icon,
                      fit: BoxFit.fill,
                    )),
                SizedBox(
                  width: 12,
                ),
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                )
              ],
            ),
            widget.title == 'Dark Mode'
                ? Switch(
                    value: val,
                    onChanged: (v) {
                      setState(() {
                        val = v;
                      });
                    },
                  )
                : widget.title == 'Help' || widget.title == 'Legal'
                    ? Container()
                    : Icon(
                        Icons.keyboard_arrow_right_outlined,
                        size: 30,
                        color: Colors.black45,
                      )
          ],
        ),
      ),
    );
  }
}
