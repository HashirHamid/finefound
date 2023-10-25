import 'package:finefound/constants/colors.dart';
import 'package:finefound/utils/booking_confirmed.dart';
import 'package:finefound/utils/make_offer.dart';
import 'package:finefound/utils/order_now.dart';
import 'package:finefound/utils/reply_listing.dart';
import 'package:finefound/utils/review_modal.dart';
import 'package:flutter/material.dart';

class ServiceCardDetail extends StatefulWidget {
  final VoidCallback func;
  const ServiceCardDetail(this.func);

  @override
  State<ServiceCardDetail> createState() => _ServiceCardDetailState();
}

class _ServiceCardDetailState extends State<ServiceCardDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  // SliderImage(
                  //     0, ["assets/images/service.png", "assets/images/service.png"]),
                  Container(
                      height: 250,
                      width: double.infinity,
                      child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image.asset("assets/images/service.png"))),

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_outline,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "35.00\€",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Tourist Guide Pontevedra",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                    Text("TRAVEL & TOURISM"),
                  ],
                ),
              ),
              Divider(
                height: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 25,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.asset(
                          "assets/icons/barber.png",
                          fit: BoxFit.fill,
                        ),
                      )),
                  title: Text('Constable'),
                  subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star_sharp,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star_sharp,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star_sharp,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star_sharp,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star_sharp,
                              color: Colors.amber,
                            ),
                            Text(
                              "(2)",
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ],
                        ),
                        Text(
                          "Bilbao, Biscay, Spain",
                          style: TextStyle(color: Colors.grey.shade400),
                        )
                      ]),
                  trailing: SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset(
                        'assets/icons/chat.png',
                        color: Theme.of(context).hintColor,
                      )),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Text(
                        "DETAIL",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                  GestureDetector(
                      onTap: () {},
                      child: Text(
                        "REVIEW",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Can you bring creative human-centered ideas to life and make great things happen beyond what meets the eye?\nWe believe in teamwork, fun, complex projects, diverse perspectives, and simple solutions. How about you? We're looking for a like-minded",
                        style: TextStyle(fontSize: 15),
                      ),
                      Container(
                        width: 120,
                        child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  "See More",
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Theme.of(context).colorScheme.primary,
                                )
                              ],
                            )),
                      ),
                    ],
                  )),
              Divider(
                height: 1,
                color: Colors.grey,
              ),
              GestureDetector(
                onTap: () {
                  orderNow(context, () {
                    widget.func();
                  });
                },
                child: Container(
                  margin:
                      EdgeInsets.only(top: 15, bottom: 5, left: 10, right: 10),
                  height: 45,
                  width: 260,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: buttonColor),
                  child: Center(
                      child: Text(
                    "BOOK NOW",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
                ),
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      makeOffer(context);
                    },
                    child: Text(
                      'Make an offer',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 16),
                    ),
                  )),
              Divider(
                height: 1,
                color: Colors.grey,
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // openDialog(context);
                      },
                      child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset("assets/icons/mail.png")),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset("assets/icons/fb.png")),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset("assets/icons/in.png")),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset("assets/icons/red.png")),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset("assets/icons/twi.png")),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  openDialog1(context);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: secondaryColor,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(3, 3),
                            blurRadius: 20,
                            spreadRadius: 1,
                            color: Colors.grey.shade400)
                      ]),
                  child: Center(
                      child: Text(
                    "Reply to Listing",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          context: context,
                          builder: (context) => BottomSheet(
                              backgroundColor: Theme.of(context).primaryColor,
                              onClosing: () {},
                              builder: (context) => reviewModal(context)));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            "assets/icons/star.png",
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Write a Review",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          "assets/icons/flag.png",
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Report Listing",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 7,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Mon"), Text("08:00 - 20:00")],
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Mon"), Text("08:00 - 20:00")],
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Mon"), Text("08:00 - 20:00")],
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Mon"), Text("08:00 - 20:00")],
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                ]),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Image.asset("assets/images/map.png"),
              )
            ],
          ),
        ));
  }
}
