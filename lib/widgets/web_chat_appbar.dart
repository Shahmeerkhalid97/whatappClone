import 'package:flutter/material.dart';
import 'package:whatapp_clone/colors.dart';
import '../info.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.10,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
            radius: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          Text('${info[0]['name']}'),
          Spacer(),
          const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
