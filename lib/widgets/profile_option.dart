import 'package:finefound/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    final _darkTheme = Provider.of<DarkThemeProvider>(context);
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
                      color: Theme.of(context).splashColor,
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
                    activeColor: Theme.of(context).colorScheme.primary,
                    value: _darkTheme.themeMode == ThemeMode.dark,
                    onChanged: (v) {
                      print(v);
                      _darkTheme.toggleTheme(v);
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
