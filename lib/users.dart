import 'package:flut_9/user_detail.dart';
import 'package:flutter/material.dart';

import 'user_data.dart';

const String tajText =
    "The term originally referred to messages sent using the Short Message Service (SMS). It has grown beyond alphanumeric text to include";



class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => __UsersPageState();
}

class __UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('User Page'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final User = users[index];
          return
          
           ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UserDetailPage(user: User,)));
            },
            title: Text(users[index].atyjonu),
            subtitle: Text('${User.kesibi} ${User.jash} jashta'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(User.prosurot),
            ),

            trailing: Icon(Icons.chevron_right), //айконду он жагына чыгарат
          );
        },
       
      ),
    );
  }
}
