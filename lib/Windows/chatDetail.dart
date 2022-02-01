import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/Windows/messageExchange.dart';

class chatDetailWindow extends StatefulWidget {
  chatDetailWindow({Key? key}) : super(key: key);

  @override
  State<chatDetailWindow> createState() => _chatDetailWindowState();
}

class _chatDetailWindowState extends State<chatDetailWindow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Row(children: const [
          CircleAvatar(
            //radius: 18,
            //backgroundColor: Colors.white,
            backgroundImage: AssetImage('lib/models/images/profile.png'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.0),
            child: Text('Manyu'),
          )
        ]),
        actions: [
          IconButton(
              onPressed: () {
                print("video call pressed");
              },
              icon: const Icon(Icons.video_call)),
          IconButton(
              onPressed: () {
                print("call pressed");
              },
              icon: const Icon(Icons.call)),
          IconButton(
              onPressed: () {
                print("3 dot pressed");
              },
              icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: messageExchange()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        hintText: "Type a message"),
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
