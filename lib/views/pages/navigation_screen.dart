// //State class
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
// import 'package:finefound/constants/colors.dart';
// import 'package:finefound/views/pages/Vhome_screen.dart';
// import 'package:flutter/material.dart';

// class Navigation extends StatefulWidget {
//   const Navigation({super.key});

//   @override
//   State<Navigation> createState() => _NavigationState();
// }

// class _NavigationState extends State<Navigation> {
//   int _page = 0;
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: CurvedNavigationBar(
//           index: _page,
//           key: _bottomNavigationKey,
//           backgroundColor: Colors.transparent,
//           buttonBackgroundColor: Colors.lightBlueAccent,
//           color: primaryColor,
//           items: [
//             CurvedNavigationBarItem(
//               child: Icon(
//                 Icons.home,
//                 size: 30,
//                 color: Colors.white,
//               ),
//               label: "Home",
//               labelStyle: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//             CurvedNavigationBarItem(
//               child: Icon(
//                 Icons.search,
//                 size: 30,
//                 color: Colors.white,
//               ),
//               label: "Search",
//               labelStyle: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//             CurvedNavigationBarItem(
//               child: Icon(
//                 Icons.favorite_border_outlined,
//                 size: 30,
//                 color: Colors.white,
//               ),
//               label: "My Ads",
//               labelStyle: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//             CurvedNavigationBarItem(
//               child: Icon(
//                 Icons.miscellaneous_services,
//                 size: 30,
//                 color: Colors.white,
//               ),
//               label: "Account",
//               labelStyle: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           ],
//           onTap: (index) {
//             setState(() {
//               _page = index;
//             });
//           },
//         ),
//         body: _page == 0
//             ? VHomeScreen()
//             : _page == 1
//                 ? VHomeScreen()
//                 : _page == 2
//                     ? VHomeScreen()
//                     : _page == 3
//                         ? VHomeScreen()
//                         : Container());
//   }
// }

import 'package:finefound/constants/colors.dart';
import 'package:finefound/provider/dark_theme_provider.dart';
import 'package:finefound/utils/payment.dart';
import 'package:finefound/utils/pick_modal.dart';
import 'package:finefound/views/pages/Vhome_screen.dart';
import 'package:finefound/views/pages/bookings_screen.dart';
import 'package:finefound/views/pages/calender_screen.dart';
import 'package:finefound/views/pages/checkout_screen.dart';
import 'package:finefound/views/pages/confirmOrder_screen.dart';
import 'package:finefound/views/pages/dashboard_screen.dart';
import 'package:finefound/views/pages/filter_screen.dart';
import 'package:finefound/views/pages/list_screen.dart';
import 'package:finefound/views/pages/listings_screen.dart';
import 'package:finefound/views/pages/message_screen.dart';
import 'package:finefound/views/pages/orders_screen.dart';
import 'package:finefound/views/pages/post_screen.dart';
import 'package:finefound/views/pages/profile_screen.dart';
import 'package:finefound/views/pages/settings_screen.dart';
import 'package:finefound/views/pages/viewProfile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final Function(int) onTap;
  final VoidCallback listing;
  final VoidCallback posting;

  CustomBottomNavigationBar({
    Key? key,
    required this.listing,
    required this.posting,
    required this.items,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: widget.items
                .asMap()
                .map((index, item) {
                  return MapEntry(
                    index,
                    GestureDetector(
                      onTap: () => widget.onTap(index),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: widget.currentIndex == index
                                ? [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: Offset(10, 10),
                                        blurRadius: 10)
                                  ]
                                : []),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            item.icon,
                            Text(
                              item.label!,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
                .values
                .toList(),
          ),
        ),
        Positioned(
          left: 175, // Adjust position as needed
          bottom: 35,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
        Positioned(
          left: 175, // Adjust position as needed
          bottom: -30,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
        Positioned(
          left: 177, // Adjust position as needed
          child: GestureDetector(
            onTap: () {
              setState(() {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    context: context,
                    builder: (context) => Pick(context, () {
                          widget.onTap(2);

                          widget.listing();
                        }, () {
                          widget.onTap(2);

                          widget.posting();
                        }));
              });
            },
            child: Container(
              width: 55,
              height: 55,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 40,
              ),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(5, 5),
                        blurRadius: 20)
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}

List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
      icon: SizedBox(
        width: 22,
        height: 22,
        child: Image.asset('assets/icons/home.png'),
      ),
      label: 'Home'),
  BottomNavigationBarItem(
      icon: SizedBox(
        width: 32,
        height: 32,
        child: Image.asset('assets/icons/booking.png'),
      ),
      label: 'Bookings'),
  BottomNavigationBarItem(
      icon: Icon(
        Icons.add_circle,
        color: Colors.blue,
        size: 0,
      ),
      label: ''),
  BottomNavigationBarItem(
      icon: SizedBox(
        width: 22,
        height: 22,
        child: Image.asset('assets/icons/inbox.png'),
      ),
      label: 'Inbox'),
  BottomNavigationBarItem(
      icon: SizedBox(
        width: 22,
        height: 22,
        child: Image.asset('assets/icons/user.png'),
      ),
      label: 'Profile'),
];

class MyHome extends StatefulWidget {
  var flag = true;
  var flag1 = false;
  var flag2 = false;
  var list = false;
  var post = false;
  var order = false;
  var calender = false;
  var dashboard = false;
  var listing = false;
  var receiveOrder = false;
  var ind;
  var profile;
  MyHome({this.ind, this.profile});

  @override
  State<MyHome> createState() => _MyAppState();
}

class _MyAppState extends State<MyHome> {
  var ind = 0;

  @override
  void initState() {
    if (widget.ind != null) {
      ind = widget.ind;
    }
    super.initState();
  }

  settings() {
    setState(() {
      widget.flag1 = true;
    });
  }

  calender() {
    setState(() {
      widget.calender = true;
    });
  }

  dash() {
    setState(() {
      widget.dashboard = true;
    });
  }

  listing() {
    setState(() {
      widget.listing = true;
    });
  }

  recOrder() {
    setState(() {
      widget.receiveOrder = true;
    });
  }

  payment() {
    setState(() {
      widget.flag2 = true;
    });
  }

  npayment() {
    setState(() {
      widget.flag2 = false;
    });
  }

  confirmOrder() {
    setState(() {
      this.ind = 2;
      widget.order = true;
    });
  }

  list() {
    setState(() {
      widget.post = false;

      widget.list = !widget.list;
    });
  }

  post() {
    setState(() {
      widget.list = false;

      widget.post = !widget.post;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dark = Provider.of<DarkThemeProvider>(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              elevation: 0,
              toolbarHeight: 0,
            ),
            bottomNavigationBar: CustomBottomNavigationBar(
              items: items,
              currentIndex: ind,
              listing: () {
                list();
              },
              posting: () {
                post();
              },
              onTap: (index) {
                setState(() {
                  ind = index;
                  widget.profile = false;
                  widget.flag1 = false;
                  widget.flag2 = false;
                  widget.order = false;
                  widget.calender = false;
                  widget.dashboard = false;
                  widget.listing = false;
                  widget.receiveOrder = false;
                });
              },
            ),
            body: Container(
                color: Theme.of(context).colorScheme.primary,
                child: Column(children: [
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        child: Image.asset(
                                          './assets/images/profile.png',
                                          width: 60,
                                          height: 60,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Hello,',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                          Text('Guillem B.',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600))
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 28,
                                width: 65,
                                decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(1, 4),
                                          blurRadius: 10,
                                          color: Colors.black38)
                                    ],
                                    border: Border.all(
                                        width: 0.5, color: Colors.white),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          widget.flag = true;
                                        });
                                      },
                                      child: Container(
                                          height: 30,
                                          width: 32,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: widget.flag
                                                  ? Colors.white
                                                  : Theme.of(context)
                                                      .colorScheme
                                                      .primary),
                                          child: Image.asset(
                                            widget.flag
                                                ? 'assets/icons/search.png'
                                                : 'assets/icons/search1.png',
                                            fit: BoxFit.contain,
                                          )),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          widget.flag = false;
                                        });
                                      },
                                      child: Container(
                                          padding: EdgeInsets.all(5),
                                          height: 30,
                                          width: 32,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: widget.flag
                                                ? Theme.of(context)
                                                    .colorScheme
                                                    .primary
                                                : Colors.white,
                                          ),
                                          child: Image.asset(widget.flag
                                              ? "assets/icons/people.png"
                                              : "assets/icons/people1.png")),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ind == 0 || ind == 3 || widget.flag1 == false
                              ? Container(
                                  height: 38,
                                  child: TextFormField(
                                    // controller: _textEditingController,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 2),

                                      fillColor: Colors.white,
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      // labelText: 'Enter your name',
                                      hintText: 'location or keywords',
                                      hintStyle: TextStyle(
                                        fontSize: 13,
                                      ),
                                      // icon: Icon(Icons.person),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      FilterScreen()));
                                        },
                                        child: SvgPicture.asset(
                                          "assets/icons/filter.svg",
                                          height: 8,
                                          width: 8,
                                          fit: BoxFit.scaleDown,
                                        ),
                                      ),
                                      prefixIcon: Image.asset(
                                        'assets/icons/mag.png',
                                        height: 2,
                                        width: 2,
                                        fit: BoxFit.scaleDown,
                                      ),

                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
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
                              : Container()
                        ],
                      )),
                  ind == 0
                      ? widget.profile != null && widget.profile == true
                          ? ViewProfile()
                          : VHomeScreen(widget.flag, () {
                              setState(() {
                                ind = 2;
                              });
                            })
                      : ind == 1
                          ? BookingScreen(() {
                              confirmOrder();
                            })
                          : ind == 2
                              ? (widget.list
                                  ? ListScreen()
                                  : widget.post
                                      ? PostScreen()
                                      : widget.order
                                          ? ConfirmOrder()
                                          : CheckOutScreen(() {
                                              confirmOrder();
                                            }))
                              : ind == 3
                                  ? MessageScreen()
                                  : ind == 4
                                      ? (widget.flag1
                                          ? SettingsScreen()
                                          : widget.flag2
                                              ? paymentModal(() {
                                                  npayment();
                                                })
                                              : widget.calender
                                                  ? CalenderScreen()
                                                  : widget.dashboard
                                                      ? DashboardScreen()
                                                      : widget.listing
                                                          ? ListingsScreen()
                                                          : widget.receiveOrder
                                                              ? OrdersScreen()
                                                              : ProfileScreen(
                                                                  () {
                                                                    payment();
                                                                  },
                                                                  () {
                                                                    settings();
                                                                  },
                                                                  () {
                                                                    calender();
                                                                  },
                                                                  () {
                                                                    dash();
                                                                  },
                                                                  () {
                                                                    listing();
                                                                  },
                                                                  () {
                                                                    recOrder();
                                                                  },
                                                                ))
                                      : Container()
                ]))));
  }
}
