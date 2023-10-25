import 'package:finefound/constants/colors.dart';
import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  final title;
  final date;
  final price;
  final VoidCallback accept;
  final VoidCallback view;
  OfferCard({
    required this.title,
    required this.date,
    required this.price,
    required this.accept,
    required this.view,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).indicatorColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              width: 1, color: const Color.fromARGB(255, 215, 237, 255))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ListTile(
          visualDensity: VisualDensity.compact,
          leading: Image.asset(
            'assets/images/service.png',
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            date,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          trailing:
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            GestureDetector(
              onTap: accept,
              child: Wrap(
                children: [
                  Icon(
                    Icons.check,
                    size: 20,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Text(
                    "Accept Offer",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Wrap(
              children: [
                Text(
                  price,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 22,
                  width: 3,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                )
              ],
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: GestureDetector(
            onTap: view,
            child: Image.asset(
              "assets/icons/view.png",
              color: Theme.of(context).hintColor,
            ),
          ),
        )
      ]),
    );
  }
}
