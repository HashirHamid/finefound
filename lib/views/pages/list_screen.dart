import 'package:finefound/constants/colors.dart';
import 'package:finefound/widgets/custom_field.dart';
import 'package:finefound/widgets/opening_hours.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
                    'Add Details',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Category",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(width: 1, color: Colors.grey.shade300)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          hint: Text(
                            'All',
                            style: TextStyle(fontSize: 12),
                          ),
                          isExpanded: true,
                          icon: Icon(Icons.keyboard_arrow_down),
                          onChanged: (value) {},
                          items: [
                            DropdownMenuItem(
                              child: Text('All'),
                              value: 'none',
                            ),
                            DropdownMenuItem(
                              child: Text('9:00AM'),
                              value: '9:00AM',
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Profile Image",
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
                          "Select Image",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomField(
                      type: TextInputType.text,
                      title: 'Title',
                      placeholder: 'John Doe',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 10,
                  ),
                  CustomField(
                      type: TextInputType.number,
                      title: 'Price',
                      placeholder: '00',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 10,
                  ),
                  CustomField(
                      type: TextInputType.text,
                      title: 'Location',
                      placeholder: 'John Doe',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 10,
                  ),
                  CustomField(
                      type: TextInputType.text,
                      title: 'Home (optional)',
                      placeholder: '-',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 10,
                  ),
                  CustomField(
                      type: TextInputType.text,
                      title: 'Email (optional)',
                      placeholder: '-',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 10,
                  ),
                  CustomField(
                      type: TextInputType.text,
                      title: 'Facebook (optional)',
                      placeholder: '-',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 10,
                  ),
                  CustomField(
                      type: TextInputType.text,
                      title: 'LinkedIn (optional)',
                      placeholder: '-',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 10,
                  ),
                  CustomField(
                      type: TextInputType.text,
                      title: 'Reddit (optional)',
                      placeholder: '-',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 10,
                  ),
                  CustomField(
                      type: TextInputType.text,
                      title: 'Twitter (optional)',
                      placeholder: '-',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Opening hours (optional)",
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 73, 132),
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Set required days advance to the booking date.",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OpeningHours(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Tags (optional)",
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 73, 132),
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 33,
                        width: 220,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              hintText: 'Title',
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 13),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.grey.shade400))),
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 33,
                        margin: EdgeInsets.all(5),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              hintText: 'Price',
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 13),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.grey.shade400))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Extra (optional)",
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 73, 132),
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 33,
                            width: 220,
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 10),
                                  hintText: 'Title',
                                  hintStyle: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 13),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade400))),
                            ),
                          ),
                          Container(
                            width: 120,
                            height: 33,
                            margin: EdgeInsets.all(5),
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 10),
                                  hintText: 'Price',
                                  hintStyle: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 13),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade400))),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (val) {},
                                side: BorderSide(
                                    width: 1, color: Colors.grey.shade400),
                              ),
                              Text(
                                "Required",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Image.asset("assets/icons/delete.png")
                        ],
                      ),
                      Divider(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "+ Add More Extras",
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 11,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Discount (optional)",
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 73, 132),
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 33,
                            width: 220,
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 10),
                                  hintText: 'Title',
                                  hintStyle: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 13),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade400))),
                            ),
                          ),
                          Container(
                            width: 120,
                            height: 33,
                            margin: EdgeInsets.all(5),
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 10),
                                  hintText: 'Price',
                                  hintStyle: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 13),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade400))),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (val) {},
                                side: BorderSide(
                                    width: 1, color: Colors.grey.shade400),
                              ),
                              Text(
                                "Required",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Image.asset("assets/icons/delete.png")
                        ],
                      ),
                      Divider(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "+ Add More Discounts",
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 11,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomField(
                      extra: 5,
                      type: TextInputType.multiline,
                      title: 'Description',
                      placeholder: 'hello@example.com',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // openDialog(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 20, bottom: 15, left: 10, right: 10),
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Theme.of(context).colorScheme.primary),
                          child: Center(
                              child: Text(
                            "Submit Listing",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // openDialog(context);
                        },
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
                            "Cancel",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
