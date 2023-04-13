import 'package:flutter/material.dart';
import 'package:whatapp_clone/colors.dart';

import '../widgets/chat_list.dart';
import '../widgets/contact_list.dart';
import '../widgets/web_profile_bar.dart';
import '../widgets/web_search_bar.dart';
import '../widgets/web_chat_appbar.dart';

class WeblLayoutScreen extends StatelessWidget {
  const WeblLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  // web profile bar
                  WebProfileBar(),
                  // web search bar
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          // web screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: [
              // web chat appbar
              const WebChatAppbar(),
              // chat list
              const Expanded(child: ChatList()),
              // Message Input box
              Container(
                height: MediaQuery.of(context).size.height * 0.10,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: chatBarMessage,
                  border: Border(
                    bottom: BorderSide(color: dividerColor),
                  ),
                ),
                child: Row(
                  children: [
                    const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 20),
                              filled: true,
                              fillColor: searchBarColor,
                              hintText: 'Type a message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              )),
                        ),
                      ),
                    ),
                    const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.mic,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
