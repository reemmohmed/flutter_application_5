import 'package:flutter/material.dart';

class RoomList extends StatefulWidget {
  const RoomList({super.key});

  @override
  State<RoomList> createState() => _RoomListState();
}

class _RoomListState extends State<RoomList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       ListTile(
      //         onTap: () {},
      //         title: Text('room'),
      //       ),
      //       ListTile(
      //         onTap: () {},
      //         title: Text('room'),
      //       ),
      //       ListTile(
      //         onTap: () {},
      //         title: Text('room'),
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Room List'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/room.jpg',
                  height: 100,
                  width: 200,
                ),
                Text('KingRoom')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/room2.jpg',
                  height: 100,
                  width: 200,
                ),
                Text('Double room')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/room3.jpg',
                  height: 100,
                  width: 200,
                ),
                Text('Family Room')
              ],
            ),
          ),
          TextButton(onPressed: () {}, child: Text('Next'))
        ],
      ),
    );
  }
}
