import 'package:flutter/material.dart';

import '../info.dart';
import '../colors.dart';

import '../screens/mobile_chat_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                      return MobileChatScreen();
                    }));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage('${info[index]['profilePic']}'),
                    ),
                    title: Text(
                      '${info[index]['name']}',
                      style: const TextStyle(fontSize: 18),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        '${info[index]['message']}',
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    trailing: Text(
                      '${info[index]['time']}',
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                ),
                const Divider(
                  color: dividerColor,
                  indent: 1,
                  thickness: 1,
                  endIndent: 1,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
