import 'package:finefound/constants/colors.dart';
import 'package:finefound/utils/complete_order_modal.dart';
import 'package:flutter/material.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Theme.of(context).colorScheme.background),
      // color: Colors.red,
      width: double.infinity,
      // height: 700,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Booking # 1779',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple, width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Processing",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Image.asset(
                  'assets/icons/chat.png',
                  height: 27,
                  width: 27,
                  color: Theme.of(context).hintColor,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              children: [
                Text(
                  'Placed On:  ',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).splashColor),
                ),
                Text("28-07-2023",
                    style: TextStyle(
                        fontSize: 13, color: Theme.of(context).splashColor))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              children: [
                Text('Purchased From:  ',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).splashColor)),
                Text("Barber",
                    style: TextStyle(
                        fontSize: 13, color: Theme.of(context).splashColor))
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Your Order",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured Service x1',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).splashColor),
                ),
                Text(
                  '\$3720.27',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).splashColor),
                ),
                Text(
                  '-\$749.99',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Warranty (Platinum)',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).splashColor),
                ),
                Text(
                  '\$259.99',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Remove",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary, fontSize: 10),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).splashColor),
                ),
                Text(
                  '\$0.00',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tax',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).splashColor),
                ),
                Text(
                  '\$228.72',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Grand Total',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$3,439.00',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ]),
            SizedBox(
              height: 40,
            ),
            Text(
              "Billing Address",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Lorem ibsum Lorem ibsum Lorem ibsum Lorem\nibsum',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                Image.asset(
                  'assets/icons/location.png',
                  color: Theme.of(context).hintColor,
                  height: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Madrid, Spain-Madrid, Spain-Madrid, Spain",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                Image.asset(
                  'assets/icons/home.png',
                  color: Theme.of(context).hintColor,
                  height: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "A Domicillio, A Domicillio, A Domicillio",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                Image.asset(
                  color: Theme.of(context).hintColor,
                  'assets/icons/phone.png',
                  height: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "+567-0980-090",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                Image.asset(
                  color: Theme.of(context).hintColor,
                  'assets/icons/mail1.png',
                  height: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "abc@gmail.com",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 20, bottom: 15, left: 10, right: 10),
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade100),
                    child: Center(
                        child: Text(
                      "Dispute",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        context: context,
                        builder: (context) => Complete(context));
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 20, bottom: 15, left: 10, right: 10),
                    height: 35,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Theme.of(context).colorScheme.primary),
                    child: Center(
                        child: Text(
                      "Complete Order",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
