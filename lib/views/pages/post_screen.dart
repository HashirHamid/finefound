import 'package:finefound/constants/colors.dart';
import 'package:finefound/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

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
                      title: 'Budget',
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
                      title: 'Urgent (optional)',
                      placeholder: '-',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 10,
                  ),
                  CustomField(
                      type: TextInputType.text,
                      title: 'Expiration Date (optional)',
                      placeholder: '-',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 10,
                  ),
                  CustomField(
                      type: TextInputType.text,
                      title: 'Day (optional)',
                      placeholder:
                          'If the request is for a specific day, indicate it',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 10,
                  ),
                  CustomField(
                      type: TextInputType.text,
                      title: 'Opening hours (optional)',
                      placeholder: '00:00',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 10,
                  ),
                  CustomField(
                      extra: 5,
                      type: TextInputType.multiline,
                      title: 'Description',
                      placeholder: '-',
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
                            "Submit Request",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
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
                                fontWeight: FontWeight.w500),
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
