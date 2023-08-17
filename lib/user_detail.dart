import 'package:flutter/material.dart';

import 'user_model.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    print(user.atyjonu);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(user.atyjonu),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://picsum.photos/id/5/367/267'),
          ),
          Text(
            user.kesibi,
            style: const TextStyle(fontSize: 30, color: Colors.deepPurple),
          ),Text(
           '${ user.jash.toString()} Jashta',
            style: const TextStyle(fontSize: 30, color: Colors.deepPurple),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
                'The term originally referred to messages sent using the Short Message Service (SMS). It has grown beyond alphanumeric text to include'),
          ),
        ],
      ),
    );
  }
}
