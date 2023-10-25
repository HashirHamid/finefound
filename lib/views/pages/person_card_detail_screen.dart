import 'package:finefound/constants/colors.dart';
import 'package:finefound/utils/booking_confirmed.dart';
import 'package:finefound/utils/make_offer.dart';
import 'package:finefound/utils/order_now.dart';
import 'package:finefound/utils/reply_listing.dart';
import 'package:finefound/utils/review_modal.dart';
import 'package:finefound/views/pages/navigation_screen.dart';
import 'package:finefound/widgets/offer_card.dart';
import 'package:flutter/material.dart';

class PersonCardDetail extends StatefulWidget {
  const PersonCardDetail({super.key});

  @override
  State<PersonCardDetail> createState() => _ServiceCardDetailState();
}

class _ServiceCardDetailState extends State<PersonCardDetail> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: SingleChildScrollView(
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
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Tourist Guide Pontevedra",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
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
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 30),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                flag = true;
                              });
                            },
                            child: Text(
                              "DETAIL",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          width: 40,
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                flag = false;
                              });
                            },
                            child: Text(
                              "OFFERS",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    Positioned(
                        left: flag ? 30 : 125,
                        bottom: 0,
                        child: Container(
                          width: 60,
                          height: 1,
                          color: Colors.amber,
                        ))
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: flag
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Can you bring creative human-centered ideas to life and make great things happen beyond what meets the eye?\nWe believe in teamwork, fun, complex projects, diverse perspectives, and simple solutions. How about you? We're looking for a like-minded"),
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
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          )
                        : Container(
                            height: 200,
                            child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return OfferCard(
                                    title: "Barber",
                                    date: "08/06/2023",
                                    price: "35.00\€",
                                    accept: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MyHome(ind: 2)));
                                    },
                                    view: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MyHome(profile: true)));
                                    });
                              },
                            ),
                          )),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Image.asset("assets/images/map.png"),
                        ),
                        Positioned(
                          left: 100,
                          bottom: 0,
                          child: GestureDetector(
                            onTap: () {
                              makeOffer(context);
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: 20, bottom: 0, left: 10, right: 10),
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Theme.of(context).colorScheme.primary),
                              child: Center(
                                  child: Text(
                                "Make an offer",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
