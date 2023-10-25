import 'package:finefound/constants/colors.dart';
import 'package:finefound/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).splashColor,
        title: Text(
          "FINEFOUND",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        actions: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Active 19m ago",
              style: TextStyle(color: Colors.grey.shade400, fontSize: 10),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: messages[index].messageType == "receiver"
                      ? Row(
                          children: [
                            CircleAvatar(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child:
                                      Image.asset('assets/images/Bitmap.png')),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: (messages[index].messageType ==
                                        "receiver"
                                    ? Colors.grey.shade200
                                    : Theme.of(context).colorScheme.primary),
                              ),
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Text(
                                    messages[index].messageContent,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Provider.of<DarkThemeProvider>(
                                                        context)
                                                    .themeMode ==
                                                ThemeMode.dark
                                            ? Theme.of(context).primaryColor
                                            : Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: (messages[index].messageType ==
                                        "receiver"
                                    ? Colors.grey.shade200
                                    : Theme.of(context).colorScheme.primary),
                              ),
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Text(
                                    messages[index].messageContent,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: messages[index].messageType ==
                                                "receiver"
                                            ? Colors.black
                                            : Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child:
                                      Image.asset('assets/images/Bitmap.png')),
                            ),
                          ],
                        ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Theme.of(context).colorScheme.background,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/icons/dots.png"),
                            Image.asset("assets/icons/camera.png"),
                            Image.asset("assets/icons/gallery.png"),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(left: 7, bottom: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color:
                          Provider.of<DarkThemeProvider>(context).themeMode ==
                                  ThemeMode.dark
                              ? Theme.of(context).primaryColor
                              : Colors.grey.shade200,
                    ),
                    width: 190,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.emoji_emotions,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          hintText: "Message",
                          hintStyle: TextStyle(
                              color: Theme.of(context).hintColor, fontSize: 12),
                          border: InputBorder.none),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.thumb_up,
                      color: Theme.of(context).colorScheme.primary,
                      size: 22,
                    ),
                    backgroundColor:
                        Provider.of<DarkThemeProvider>(context).themeMode ==
                                ThemeMode.dark
                            ? Theme.of(context).primaryColor
                            : Colors.grey.shade200,
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
  ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
  ChatMessage(
      messageContent: "Hey Kriss, I am doing fine dude. wbu?",
      messageType: "sender"),
  ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
  ChatMessage(
      messageContent: "Is there any thing wrong?", messageType: "sender"),
];

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}
