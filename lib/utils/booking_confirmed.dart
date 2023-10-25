import 'package:finefound/constants/colors.dart';
import 'package:flutter/material.dart';

Future? openDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) => SimpleDialog(
        backgroundColor: Theme.of(context).primaryColor,
        insetPadding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 22,
                )),
            Text(
              "Booking confirmed",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        children: [
          SimpleDialogOption(
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/icons/barber.png',
                    height: 100,
                  ),
                  Text(
                    "Barber Barber",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/certified.png',
                        height: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Booking confirmed',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Code # 1779',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "17-05-2023\t\t\t|\t\t\t11:34",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  GestureDetector(
                    onTap: () {
                      openDialog(context);
                    },
                    child: Container(
                      width: 120,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(35)),
                      child: Center(
                          child: Text(
                        "View Booking",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      openDialog(context);
                    },
                    child: Container(
                      width: 120,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(35)),
                      child: Center(
                          child: Text(
                        "Send Message",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 4,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(35)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

class PlaceOrder extends StatelessWidget {
  VoidCallback function;
  PlaceOrder(this.function);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.background,
          foregroundColor: Theme.of(context).splashColor,
          title: Text(
            "Peticion Enviada",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/icons/hourglass.png',
                height: 150,
              ),
              Text(
                "...",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Tu petición ha sido enviada\npara ser procesada.\n¡mucha suerte!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).splashColor),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  function();
                },
                child: Container(
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(35)),
                  child: Center(
                      child: Text(
                    "Inicio",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future? placeOrder(BuildContext context, VoidCallback function) {
  showDialog(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) => SimpleDialog(
        backgroundColor: Theme.of(context).primaryColor,
        insetPadding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 22,
                )),
            Text(
              "Peticion Enviada",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        children: [
          SimpleDialogOption(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/icons/hourglass.png',
                    height: 150,
                  ),
                  Text(
                    "...",
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Tu petición ha sido enviada\npara ser procesada.\n¡mucha suerte!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).splashColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      function();
                    },
                    child: Container(
                      width: 120,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(35)),
                      child: Center(
                          child: Text(
                        "Inicio",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 4,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(35)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
