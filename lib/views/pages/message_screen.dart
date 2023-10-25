import 'package:finefound/views/pages/filter_screen.dart';
import 'package:finefound/views/pages/textmessage_screen.dart';
import 'package:finefound/widgets/chat_card.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Theme.of(context).colorScheme.background),
        // color: Colors.red,
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Messages",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 500,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => Column(
                      children: [
                        ChatCard(
                          function: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ChatScreen()));
                          },
                          image: "assets/images/Bitmap.png",
                          message: 'Hey Can you cut my hairs?',
                          time: '9:36 AM',
                          title: 'Finefound',
                        ),
                        Divider(
                          color: Colors.grey.shade500,
                        ),
                      ],
                    )),
          )
        ]),
      ),
    );
  }
}
