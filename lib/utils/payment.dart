import 'package:finefound/widgets/payment_options.dart';
import 'package:flutter/material.dart';

class paymentModal extends StatefulWidget {
  final VoidCallback func;
  paymentModal(this.func);

  @override
  State<paymentModal> createState() => _paymentModalState();
}

class _paymentModalState extends State<paymentModal> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.only(top: 20, left: 18, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: Theme.of(context).primaryColor,
      ),
      // color: Colors.red,
      width: double.infinity,
      child: SingleChildScrollView(
        child: flag
            ? Column(children: [
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: widget.func,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Payment Methods",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Payment Method',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Wrap(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.green,
                              ),
                              Text(
                                'Add Here',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PaymentOptions(
                          function: () {
                            setState(() {
                              flag = false;
                            });
                          },
                          image: 'assets/icons/stripe.png',
                          title: 'Tarjeta de credito (Stripe)',
                          subtitle: ''),
                      PaymentOptions(
                          function: () {},
                          image: 'assets/icons/Visa1.png',
                          title: 'Pay with Credit Card',
                          subtitle: '**** 1234'),
                      SizedBox(
                        height: 60,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 4,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ])
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          setState(() {
                            flag = true;
                          });
                        },
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Payment Methods",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: Color.fromARGB(255, 227, 222, 235),
                    child: Image.asset(
                      'assets/icons/Outlined.png',
                      color: Colors.deepPurple,
                      height: 28,
                      width: 28,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name on card",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          Container(
                            width: 240,
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade400)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade400))),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expiry",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade400)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade400))),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Card number",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          Container(
                            width: 240,
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade400)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade400))),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CVV",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade400)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade400))),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color.fromARGB(255, 255, 59, 45)),
                    child: Center(
                        child: Text(
                      "Delete",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    )),
                  ),
                ],
              ),
      ),
    ));
  }
}
