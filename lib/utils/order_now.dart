// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class BookingPage extends StatefulWidget {
//   @override
//   _BookingPageState createState() => _BookingPageState();
// }

// class _BookingPageState extends State<BookingPage> {
//   late TimeOfDay _time;
//   late String _service;
//   List<bool> _selectedServices = [true, false, true, false, true, false];

//   @override
//   void initState() {
//     super.initState();
//     _time = TimeOfDay.now();
//     _service = 'basic';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: 300,
//         margin: EdgeInsets.all(26.0),
//         child:
//       ),
//     );
//   }
// }

import 'package:finefound/constants/colors.dart';
import 'package:finefound/views/pages/Vhome_screen.dart';
import 'package:flutter/material.dart';

Future? orderNow(BuildContext context, VoidCallback func) {
  List<bool> _selectedServices = [true, false, true, false, true, false];
  showDialog(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) => SimpleDialog(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        insetPadding: EdgeInsets.symmetric(horizontal: 10),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Booking",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
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
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                          hintText: 'Message Here',
                          hintStyle: TextStyle(fontSize: 13),
                          contentPadding: EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  width: 1, color: Colors.grey.shade300))),
                      controller: TextEditingController(),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Time',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 1, color: Colors.grey.shade300)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            hint: Text(
                              'Please select one or more subsequent time slots.',
                              style: TextStyle(fontSize: 10),
                            ),
                            isExpanded: true,
                            icon: Icon(Icons.keyboard_arrow_down),
                            onChanged: (value) {},
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                    'Please select one or more subsequent time slots.'),
                                value: 'none',
                              ),
                              DropdownMenuItem(
                                child: Text('9:00AM'),
                                value: '9:00AM',
                              )
                            ]),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.grey,
                                value: _selectedServices[0],
                                onChanged: (value) {
                                  setState(() {
                                    _selectedServices[0] = value!;
                                  });
                                },
                              ),
                              Text('basic (0.00\€)'),
                            ]),
                        Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.grey,
                                value: _selectedServices[1],
                                onChanged: (value) {
                                  setState(() {
                                    _selectedServices[1] = value!;
                                  });
                                },
                              ),
                              Text('premium (10.00\€)'),
                            ]),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.grey,
                                value: _selectedServices[2],
                                onChanged: (value) {
                                  setState(() {
                                    _selectedServices[2] = value!;
                                  });
                                },
                              ),
                              Text('basic (0.00\€)'),
                            ]),
                        Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.grey,
                                value: _selectedServices[3],
                                onChanged: (value) {
                                  setState(() {
                                    _selectedServices[3] = value!;
                                  });
                                },
                              ),
                              Text('premium (10.00\€)'),
                            ]),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.grey,
                                value: _selectedServices[4],
                                onChanged: (value) {
                                  setState(() {
                                    _selectedServices[4] = value!;
                                  });
                                },
                              ),
                              Text('basic (0.00\€)'),
                            ]),
                        Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.grey,
                                value: _selectedServices[5],
                                onChanged: (value) {
                                  setState(() {
                                    _selectedServices[5] = value!;
                                  });
                                },
                              ),
                              Text('premium (10.00\€)'),
                            ]),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                GestureDetector(
                  onTap: () {
                    var count = 0;
                    func();
                    Navigator.of(context).popUntil(
                      (_) => count++ >= 2,
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: buttonColor),
                    child: Center(
                        child: Text(
                      "Book Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    ),
  );
}
