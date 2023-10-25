import 'package:finefound/constants/colors.dart';
import 'package:finefound/utils/booking.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookingsCard extends StatelessWidget {
  final VoidCallback func;
  BookingsCard({super.key, this.color, required this.func});

  final color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        booking(context, () {
          func();
        });
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(6, 4),
                      blurRadius: 18,
                      color: Colors.grey.shade200)
                ],
                border: Border.all(width: 1, color: color)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Booking #1123",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: color, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Pending",
                            style: TextStyle(
                                color: color,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    Wrap(
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: Image.asset('assets/icons/chat.png'),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/exp.png',
                      height: 18,
                      width: 18,
                      color: Theme.of(context).hintColor,
                      fit: BoxFit.scaleDown,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      "Barber",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Booked on 08/10/2023 by finefound3",
                      style:
                          TextStyle(color: Colors.grey.shade500, fontSize: 10),
                    ),
                    Text(
                      '35.00\€',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
              left: MediaQuery.of(context).size.width - 33,
              top: 65,
              child: Container(
                height: 24,
                width: 7,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    borderRadius: BorderRadius.circular(15)),
              ))
        ],
      ),
    );
  }
}
