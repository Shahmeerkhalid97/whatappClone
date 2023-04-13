import 'package:flutter/material.dart';
import 'package:whatapp_clone/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.10,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: webAppBarColor,
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
      ),
      child: Row(
        children: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
            // radius: 20,
          ),
          Spacer(),
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.comment,
                color: Colors.grey,
              )),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
