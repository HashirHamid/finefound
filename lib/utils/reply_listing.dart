import 'package:finefound/constants/colors.dart';
import 'package:flutter/material.dart';

Future? openDialog1(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) => SimpleDialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 10),
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Reply to Listing",
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      maxLines: 5,
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
                      )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        // openDialog(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 20, bottom: 5, left: 10, right: 10),
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Theme.of(context).colorScheme.primary),
                        child: Center(
                            child: Text(
                          "Reply",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
