import 'package:finefound/constants/colors.dart';
import 'package:finefound/views/pages/confirmOrder_screen.dart';
import 'package:flutter/material.dart';

Future? booking(BuildContext context, VoidCallback function) {
  showDialog(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) => SimpleDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Theme.of(context).primaryColor,
        insetPadding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        children: [
          SimpleDialogOption(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      'Booking # 1779',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 134, 233, 20),
                              width: 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Confirmed",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 126, 216, 24),
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Wrap(
                      children: [
                        Text(
                          "Date: ",
                          style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                        Text(
                          "28-07-2023",
                          style: TextStyle(
                              color: Theme.of(context).hintColor, fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Wrap(
                      children: [
                        Text(
                          "Time: ",
                          style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                        Text(
                          "9:00PM-9:30PM",
                          style: TextStyle(
                              color: Theme.of(context).hintColor, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Wrap(
                      children: [
                        Text(
                          "Amount: ",
                          style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                        Text(
                          "200",
                          style: TextStyle(
                              color: Theme.of(context).hintColor, fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Wrap(
                      children: [
                        Text(
                          "Package: ",
                          style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                        Text(
                          "BASIC",
                          style: TextStyle(
                              color: Theme.of(context).hintColor, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Message',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: TextField(
                    minLines: null,
                    maxLines: 3,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        hintText: 'Message Here',
                        contentPadding: EdgeInsets.all(8),
                        hintStyle: TextStyle(
                            color: Colors.grey.shade500, fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.grey.shade400,
                            ),
                            borderRadius: BorderRadius.circular(7))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  children: [
                    Text(
                      "Customer Note: ",
                      style: TextStyle(
                          color: Theme.of(context).hintColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                    Text(
                      "28-07-2023",
                      style: TextStyle(
                          color: Theme.of(context).hintColor, fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  children: [
                    Text(
                      "Booking Note: ",
                      style: TextStyle(
                          color: Theme.of(context).hintColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                    Text(
                      "Lorem Ibsum",
                      style: TextStyle(
                          color: Theme.of(context).hintColor, fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
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
                          "Cancel",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        function();
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 20, bottom: 15, left: 10, right: 10),
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Theme.of(context).colorScheme.primary),
                        child: Center(
                            child: Text(
                          "View",
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
        ],
      ),
    ),
  );
}
