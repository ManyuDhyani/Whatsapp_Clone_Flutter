import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/Windows/chatDetail.dart';
import 'package:whatsapp_clone_flutter/models/chatModels.dart';

class Chats extends StatefulWidget {
  Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: user.length,
          itemBuilder: (context, i) => Column(
                children: [
                  const Divider(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(user[i].profilePic ??
                          'lib/models/images/profile.png'),
                    ),
                    title: Text(
                      user[i].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      user[i].message,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                    trailing: Text(
                      user[i].time,
                      style:
                          const TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => chatDetailWindow()));
                    },
                  )
                ],
              )),
    );
  }
}
