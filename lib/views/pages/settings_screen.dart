import 'package:finefound/constants/colors.dart';
import 'package:finefound/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 18, right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Theme.of(context).colorScheme.background),
        // color: Colors.red,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Settings",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                      border: Border.all(width: 1, color: Colors.grey.shade400),
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
              SizedBox(
                height: 20,
              ),
              CustomField(
                  type: TextInputType.text,
                  title: 'First Name',
                  placeholder: 'John Doe',
                  controller: TextEditingController()),
              SizedBox(
                height: 10,
              ),
              CustomField(
                  type: TextInputType.text,
                  title: 'Last Name',
                  placeholder: 'John Doe',
                  controller: TextEditingController()),
              SizedBox(
                height: 10,
              ),
              CustomField(
                  extra: 3,
                  type: TextInputType.multiline,
                  title: 'Description',
                  placeholder: 'John Doe',
                  controller: TextEditingController()),
              SizedBox(
                height: 10,
              ),
              CustomField(
                  type: TextInputType.text,
                  title: 'Email Address',
                  placeholder: 'hello@example.com',
                  controller: TextEditingController()),
              SizedBox(
                height: 10,
              ),
              CustomField(
                  obscure: true,
                  type: TextInputType.text,
                  title: 'New Password',
                  placeholder: '●●●●●●●●●●',
                  controller: TextEditingController()),
              SizedBox(
                height: 10,
              ),
              CustomField(
                  obscure: true,
                  type: TextInputType.text,
                  title: 'Confirm Password',
                  placeholder: '●●●●●●●●●●',
                  controller: TextEditingController()),
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
                      // openDialog(context);
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
                        "OK",
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
      ),
    );
  }
}
