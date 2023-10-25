import 'package:finefound/provider/dark_theme_provider.dart';
import 'package:finefound/utils/payment.dart';
import 'package:finefound/views/pages/filter_screen.dart';
import 'package:finefound/widgets/profile_option.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  final VoidCallback func1;
  final VoidCallback func;
  final VoidCallback func2;
  final VoidCallback func3;
  final VoidCallback func4;
  final VoidCallback func5;
  ProfileScreen(
      this.func1, this.func, this.func2, this.func3, this.func4, this.func5);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 35, left: 45, right: 45),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Theme.of(context).colorScheme.background),
        // color: Colors.red,
        width: double.infinity,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "General",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            ProfileOpt("assets/icons/dash.png", "Dashboard", () {
              widget.func3();
            }),
            ProfileOpt("assets/icons/Filter.png", "Listing", () {
              widget.func4();
            }),
            ProfileOpt("assets/icons/cal.png", "Calender", () {
              widget.func2();
            }),
            ProfileOpt("assets/icons/Group.png", "Orders", () {
              widget.func5();
            }),
            SizedBox(
              height: 10,
            ),
            Text(
              "Account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            ProfileOpt("assets/icons/settings.png", "Setting", () {
              widget.func();
            }),
            ProfileOpt("assets/icons/noti.png", "Notifications", () {}),
            ProfileOpt("assets/icons/Outlined.png", "Payment Method", () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => paymentModal(context)));
              widget.func1();
            }),
            ProfileOpt("assets/icons/sun.png", "Dark Mode", () {}),
            Text(
              "Community",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            ProfileOpt("assets/icons/help.png", "Help", () {}),
            ProfileOpt("assets/icons/Avatar.png", "Legal", () {}),
          ]),
        ),
      ),
    );
  }
}
