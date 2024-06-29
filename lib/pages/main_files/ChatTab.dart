import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/chatUsersModel.dart';
import '../../widgets/conversationList.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  _ChatTab createState() => _ChatTab();
}

class _ChatTab extends State<ChatTab> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "images/userImage1.jpeg",
        time: "Now"),
    ChatUsers(
        name: "Glady's Murphy",
        messageText: "That's Great",
        imageURL: "images/userImage2.jpeg",
        time: "Yesterday"),
    ChatUsers(
        name: "Jorge Henry",
        messageText: "Hey where are you?",
        imageURL: "images/userImage3.jpeg",
        time: "31 Mar"),
    ChatUsers(
        name: "Philip Fox",
        messageText: "Busy! Call me in 20 mins",
        imageURL: "images/userImage4.jpeg",
        time: "28 Mar"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURL: "images/userImage5.jpeg",
        time: "23 Mar"),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        imageURL: "images/userImage6.jpeg",
        time: "17 Mar"),
    ChatUsers(
        name: "Andrey Jones",
        messageText: "Can you please share the file?",
        imageURL: "images/userImage7.jpeg",
        time: "24 Feb"),
    ChatUsers(
        name: "John Wick",
        messageText: "How are you?",
        imageURL: "images/userImage8.jpeg",
        time: "18 Feb"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Чаты",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      CupertinoButton(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 2, bottom: 2),
                        color: Color.fromRGBO(162, 132, 94, 1.00),
                        borderRadius: BorderRadius.circular(30),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 2),
                            Text(
                              " Новый ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          // Add your button press logic here
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: CupertinoSearchTextField(
                    placeholder: "Поиск...",
                    placeholderStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      color: Colors.grey.shade600,
                      size: 20,
                    ),
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.all(8),
                    borderRadius: BorderRadius.circular(30),
                    itemColor: Colors.grey.shade100,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Padding(
                  padding: EdgeInsets.all(6.0),
                  child: CupertinoScrollbar(
                    child: ListView.builder(
                      itemCount: chatUsers.length,
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(top: 16),
                      itemBuilder: (context, index) {
                        return ConversationList(
                          name: chatUsers[index].name,
                          messageText: chatUsers[index].messageText,
                          imageUrl: chatUsers[index].imageURL,
                          time: chatUsers[index].time,
                          isMessageRead:
                              (index == 0 || index == 3) ? true : false,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
