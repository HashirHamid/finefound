import 'package:finefound/constants/colors.dart';
import 'package:finefound/utils/theme_data.dart';
import 'package:finefound/views/pages/filter_screen.dart';
import 'package:finefound/widgets/person_card.dart';
import 'package:finefound/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VHomeScreen extends StatefulWidget {
  bool flag;
  final VoidCallback func;
  VHomeScreen(this.flag, this.func);

  @override
  State<VHomeScreen> createState() => _VHomeScreenState();
}

class _VHomeScreenState extends State<VHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Theme.of(context).colorScheme.secondary),
          // color: Colors.red,
          width: double.infinity,
          // height: 700,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.flag
                    ? SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  './assets/images/home.png',
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/images/home12.png',
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/techni.png',
                                  height: 35,
                                  width: 35,
                                  fit: BoxFit.scaleDown,
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/dog.png',
                                  height: 35,
                                  width: 35,
                                  fit: BoxFit.scaleDown,

                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/heart.png',
                                  height: 35,
                                  width: 35,
                                  fit: BoxFit.scaleDown,

                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/law.png',
                                  height: 35,
                                  width: 35,
                                  fit: BoxFit.scaleDown,

                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/trainer.png',
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/translate.png',
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/luggage.png',
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/education.png',
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/redcarpet.png',
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/shapes.png',
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/landscape.png',
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/digimark.png',
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/van.png',
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/ticket.png',
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  './assets/icons/more.png',
                                  // width: 60,
                                  // color: Colors.black,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 22,
                            ),
                          ],
                        ),
                      )
                    : Container(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widget.flag
                        ? Text(
                            'Servicios',
                            //  : 'PETICIONES',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          )
                        : Text(
                            'PETICIONES',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                    Row(
                      children: [
                        Text(
                          "SORT BY",
                          style: TextStyle(fontSize: 11),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 80,
                          height: 25,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade400)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                padding: EdgeInsets.only(left: 10),
                                elevation: 0,
                                icon: Icon(Icons.keyboard_arrow_down,
                                    color: Theme.of(context).hintColor),
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Theme.of(context).hintColor),
                                onChanged: (val) {},
                                items: [DropdownMenuItem(child: Text('DATE'))]),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                    height: 550,
                    width: double.infinity,
                    child: widget.flag
                        ? ListView.builder(
                            itemCount: 5,
                            itemBuilder: ((context, index) => ServiceCard(() {
                                  widget.func();
                                })))
                        : ListView.builder(
                            itemCount: 5,
                            itemBuilder: ((context, index) => PersonCard())))
              ],
            ),
          )),
    );
  }
}
