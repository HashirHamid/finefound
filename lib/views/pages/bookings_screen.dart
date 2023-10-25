import 'package:finefound/constants/colors.dart';
import 'package:finefound/views/pages/filter_screen.dart';
import 'package:finefound/widgets/bookings_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookingScreen extends StatelessWidget {
  final VoidCallback func;
  const BookingScreen(this.func);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 35, horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Theme.of(context).colorScheme.background),
            // color: Colors.red,
            width: double.infinity,
            // height: 700,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bookings',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BookingsCard(
                      color: Colors.yellow.shade600,
                      func: () {
                        func();
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  BookingsCard(
                      color: Colors.blue.shade400,
                      func: () {
                        func();
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  BookingsCard(
                      color: Colors.yellow.shade600,
                      func: () {
                        func();
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  BookingsCard(
                      color: Colors.red.shade400,
                      func: () {
                        func();
                      }),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )));
  }
}
