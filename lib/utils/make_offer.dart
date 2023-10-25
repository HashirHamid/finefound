import 'package:finefound/constants/colors.dart';
import 'package:finefound/widgets/custom_field.dart';
import 'package:flutter/material.dart';

Future? makeOffer(BuildContext context) {
  List<bool> _selectedServices = [true, false, true, false, true, false];
  showDialog(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) => SimpleDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Theme.of(context).primaryColor,
        insetPadding: EdgeInsets.symmetric(horizontal: 10),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Make an Offer",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.close,
                  size: 32,
                ))
          ],
        ),
        children: [
          SimpleDialogOption(
              child: Center(
            child: Column(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomField(
                      type: TextInputType.text,
                      title: 'Price',
                      placeholder: 'Message here',
                      controller: TextEditingController()),
                  CustomField(
                      type: TextInputType.text,
                      extra: 3,
                      title: 'Detail',
                      placeholder: 'Message here',
                      controller: TextEditingController()),
                  CustomField(
                      type: TextInputType.text,
                      title: 'Location',
                      placeholder: 'Add Location',
                      controller: TextEditingController()),
                  Text("Attachment",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 140,
                      height: 35,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(7)),
                      child: Center(
                          child: Text(
                        "Select File",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      submmitted(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 20, bottom: 5, left: 25, right: 25),
                      height: 40,
                      width: 230,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Theme.of(context).colorScheme.primary),
                      child: Center(
                          child: Text(
                        "Submit Offer",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              )
            ]),
          ))
        ],
      ),
    ),
  );
}

Future? submmitted(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
          builder: (context, setState) => SimpleDialog(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  insetPadding: EdgeInsets.symmetric(horizontal: 3),
                  children: [
                    SimpleDialogOption(
                        child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.close,
                                size: 22,
                              ))
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 280,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 215, 255, 217)),
                        child: Center(
                          child: Text(
                            "Offer Submitted",
                            style: TextStyle(color: Colors.green, fontSize: 18),
                          ),
                        ),
                      )
                    ]))
                  ])));
}
