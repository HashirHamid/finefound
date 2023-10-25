import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String title;
  final String placeholder;
  final type;
  final controller;
  final obscure;
  final extra;
  CustomField({
    this.extra,
    this.obscure,
    required this.type,
    required this.title,
    required this.placeholder,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Theme.of(context).secondaryHeaderColor,
              fontSize: 13,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: this.extra != null ? 80 : 40,
          margin: EdgeInsets.only(bottom: 20),
          child: TextFormField(
            controller: controller,
            obscureText: this.obscure != null ? this.obscure : false,
            maxLines: this.extra != null ? this.extra : 1,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 2, left: 12),

              fillColor: Theme.of(context).primaryColor,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(5.0),
              ),

              hintText: placeholder,
              hintStyle: TextStyle(
                  fontSize: 13, color: Color.fromARGB(255, 171, 171, 171)),
              // icon: Icon(Icons.person),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            // validator: (value) {
            //   // if (value.isEmpty) {
            //   //   return 'Please enter your name';
            //   // }
            //   // return null;
            // },
            // keyboardType: TextInputType.text,
            // textCapitalization: TextCapitalization.words,
            // textInputAction: TextInputAction.next,
            // autofocus: true,
            // maxLength: 50,
            onChanged: (value) {
              // Add your onChanged logic here
            },
            onFieldSubmitted: (value) {
              // Add your onFieldSubmitted logic here
            },
          ),
        )
      ],
    );
  }
}
