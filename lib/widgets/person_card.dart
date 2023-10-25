import 'package:finefound/constants/colors.dart';
import 'package:finefound/views/pages/person_card_detail_screen.dart';
import 'package:finefound/views/pages/service_card_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonCard extends StatefulWidget {
  const PersonCard({super.key});

  @override
  State<PersonCard> createState() => _PersonCardState();
}

class _PersonCardState extends State<PersonCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PersonCardDetail()));
      },
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        color: Colors.black.withOpacity(0.1))
                  ]),
              padding: EdgeInsets.only(right: 10),
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 95,
                            child: Image.asset(
                              './assets/icons/personimage.png',
                              fit: BoxFit.fill,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Clean My Garden',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 18,
                                    color: Theme.of(context).hintColor,
                                  ),
                                  Text(
                                    'Pontevedra, provincia , España',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Theme.of(context).hintColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Wrap(
                                    crossAxisAlignment: WrapCrossAlignment.end,
                                    children: [
                                      Image.asset(
                                        "assets/icons/urgent.png",
                                        color: Theme.of(context).hintColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Urgente",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Wrap(
                                    crossAxisAlignment: WrapCrossAlignment.end,
                                    children: [
                                      Image.asset(
                                        "assets/icons/calendarp.png",
                                        color: Theme.of(context).hintColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "08/06/2023",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Wrap(
                                    crossAxisAlignment: WrapCrossAlignment.end,
                                    children: [
                                      Image.asset(
                                        "assets/icons/time.png",
                                        color: Theme.of(context).hintColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "18:00",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/icons/chat.png",
                            color: Theme.of(context).splashColor,
                            height: 16,
                            width: 16,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            '35.00\€',
                            style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).colorScheme.tertiary,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )),
          Positioned(
              left: 370,
              top: 70,
              child: Container(
                height: 24,
                width: 7,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    borderRadius: BorderRadius.circular(15)),
              ))
        ],
      ),
    );
  }
}
