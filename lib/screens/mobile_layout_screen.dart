import 'package:flutter/material.dart';

import '../colors.dart';
import '../widgets/contact_list.dart';

class MobileLayoutScreen extends StatelessWidget {
  const MobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: appBarColor,
              elevation: 0,
              title: const Text(
                'Whatapp',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.blueGrey,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    )),
              ],
              bottom: const TabBar(
                indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: 'Chats',
                  ),
                  Tab(
                    text: 'Status',
                  ),
                  Tab(
                    text: 'Calls',
                  ),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                ContactList(),
                Center(
                  child: Text('status'),
                ),
                Center(
                  child: Text('calls'),
                ),
              ],
            ),
            floatingActionButton: const FloatingActionButton(
              backgroundColor: tabColor,
              onPressed: null,
              child: Icon(
                Icons.comment,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
