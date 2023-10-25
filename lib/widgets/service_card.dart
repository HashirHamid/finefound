import 'package:finefound/constants/colors.dart';
import 'package:finefound/views/pages/service_card_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceCard extends StatefulWidget {
  final VoidCallback func;
  const ServiceCard(this.func);

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ServiceCardDetail(() {
                  widget.func();
                })));
      },
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  border: Border.all(width: 0.8, color: Colors.amber),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 15,
                        color: Colors.black.withOpacity(0.1))
                  ]),
              padding: EdgeInsets.only(right: 10),
              margin: EdgeInsets.symmetric(vertical: 10),
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
                              './assets/images/cardimage.png',
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
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    'Guia Turistico',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        './assets/images/certified.png',
                                        width: 15,
                                        height: 15,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Image.asset(
                                        './assets/images/up.png',
                                        width: 15,
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'PACO',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '● Viajes Y Turismo',
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Theme.of(context).hintColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 17,
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
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/icons/chat.png",
                                  height: 16,
                                  width: 16,
                                  color: Theme.of(context).splashColor),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.favorite_outline,
                                size: 18,
                                color: Theme.of(context).hintColor,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                './assets/images/star.svg',
                                width: 12,
                                height: 12,
                              ),
                              Text(
                                ' 5.0 ',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 252, 199, 42),
                                    fontSize: 12),
                              ),
                              Text(
                                '(2)',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 188, 188, 188),
                                    fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                '35.00\€',
                                style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )),
          Positioned(
              left: MediaQuery.of(context).size.width - 23,
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
