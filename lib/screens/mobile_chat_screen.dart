import 'package:flutter/material.dart';
import '../colors.dart';
import '../info.dart';
import '../widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('${info[0]['name']}'),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Message',
                    filled: true,
                    fillColor: mobileChatBoxColor,
                    contentPadding: const EdgeInsets.all(10),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        Icons.emoji_emotions,
                        color: Colors.grey,
                      ),
                    ),
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        )),
                  ),
                )),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.mic,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
