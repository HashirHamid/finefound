import 'package:finefound/constants/colors.dart';
import 'package:flutter/material.dart';

class ViewProfile extends StatelessWidget {
  const ViewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 35, horizontal: 15),
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
                children: [
                  Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 290,
                            width: double.infinity,
                            padding:
                                EdgeInsets.only(left: 16, top: 12, right: 16),
                            child: Column(children: [
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                "Paco",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Wrap(children: [
                                Image.asset(
                                  "assets/icons/location.png",
                                  height: 15,
                                  width: 15,
                                  color: Theme.of(context).hintColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Barcelona, provincia de Barcelona,",
                                  style: TextStyle(fontSize: 12),
                                )
                              ]),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "MEMBER SINCE 31/03/2023",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.grey.shade500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 40,
                                height: 3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.amber),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Text(
                                    "5.0",
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "(2)",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey.shade500),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Wrap(
                                    children: [
                                      Image.asset(
                                        "assets/icons/titul.png",
                                        width: 20,
                                        height: 20,
                                        color: Theme.of(context).hintColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "4 Titulaciones",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Wrap(
                                    children: [
                                      Image.asset(
                                        "assets/icons/professional.png",
                                        width: 20,
                                        color: Theme.of(context).hintColor,
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Professional",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Wrap(
                                    children: [
                                      Image.asset(
                                        "assets/icons/Disp.png",
                                        width: 20,
                                        color: Theme.of(context).hintColor,
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Disponible",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 138,
                                  ),
                                  Wrap(
                                    alignment: WrapAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/icons/7an.png",
                                        width: 20,
                                        color: Theme.of(context).hintColor,
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "7 Anos",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 1,
                                color: Colors.grey.shade300,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Wrap(
                                  children: [
                                    Image.asset(
                                      'assets/icons/chat.png',
                                      width: 25,
                                      color: Theme.of(context).hintColor,
                                      height: 25,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Send Message",
                                      style: TextStyle(
                                          color: Theme.of(context).hintColor,
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                              )
                            ]),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(3, 3),
                                      blurRadius: 25,
                                      color: Colors.grey.shade300)
                                ],
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Positioned(
                        left: 140,
                        top: 0,
                        child: Image.asset(
                          "assets/icons/barber.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Positioned(
                          left: 0,
                          bottom: 23,
                          child: Container(
                            height: 26,
                            width: 3,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15))),
                          ))
                    ],
                  ),
                  Container(
                    height: 110,
                    width: double.infinity,
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(3, 3),
                              blurRadius: 25,
                              color: Colors.grey.shade300)
                        ],
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      "Paco Remera Díaz es un peluquero profesional con 7 años de experienciaen el campo. Cuenta con cuatrotitulaciones de renombre en distintos cursos de peluquería, lo que demuestra su compromiso con la educacióncontinua y la excelencia en su trabajo.",
                      style: TextStyle(
                        fontSize: 11,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                  )
                ],
              ),
            )));
    ;
  }
}
