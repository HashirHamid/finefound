import 'package:finefound/constants/colors.dart';
import 'package:finefound/widgets/listing_card.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const rowSpacer = TableRow(children: [
      SizedBox(
        height: 15,
      ),
      SizedBox(
        height: 15,
      ),
      SizedBox(
        height: 15,
      ),
      SizedBox(
        height: 15,
      )
    ]);
    return Expanded(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                    'Received Orders',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Table(
                    children: [
                      TableRow(children: [
                        Text(
                          "Order#",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Amount",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Status",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Date",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text(
                          "#1790",
                        ),
                        Text(
                          "15.75\$",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 27),
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Pending",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "08-07-2022",
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text(
                          "#1790",
                        ),
                        Text(
                          "15.75\$",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 27),
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Pending",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "08-07-2022",
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text(
                          "#1790",
                        ),
                        Text(
                          "15.75\$",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 27),
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Pending",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "08-07-2022",
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text(
                          "#1790",
                        ),
                        Text(
                          "15.75\$",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 27),
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Pending",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "08-07-2022",
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text(
                          "#1790",
                        ),
                        Text(
                          "15.75\$",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 27),
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Pending",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "08-07-2022",
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text(
                          "#1790",
                        ),
                        Text(
                          "15.75\$",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 27),
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Pending",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "08-07-2022",
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text(
                          "#1790",
                        ),
                        Text(
                          "15.75\$",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 27),
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Pending",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "08-07-2022",
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text(
                          "#1790",
                        ),
                        Text(
                          "15.75\$",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 27),
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Pending",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "08-07-2022",
                        ),
                      ]),
                      rowSpacer,
                      TableRow(children: [
                        Text(
                          "#1790",
                        ),
                        Text(
                          "15.75\$",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 27),
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Pending",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "08-07-2022",
                        ),
                      ])
                    ],
                  )
                ],
              ),
            )));
    ;
  }
}
