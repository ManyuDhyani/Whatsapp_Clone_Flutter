import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/models/statusModels.dart';

class statusDetailWindow extends StatefulWidget {
  statusDetailWindow({Key? key}) : super(key: key);

  @override
  State<statusDetailWindow> createState() => _statusDetailWindowState();
}

class _statusDetailWindowState extends State<statusDetailWindow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('lib/models/images/profile.png'),
          ),
          title: const Text(
            "My Status",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            "Tap to add status update",
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
          ),
          onTap: () {
            print("Status Detail Pressed");
          },
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Recent updates",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Flexible(
          child: ListView.builder(
            itemCount: statusLog.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(statusLog[i].profilePic ??
                        'lib/models/images/profile.png'),
                  ),
                  title: Text(
                    statusLog[i].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    statusLog[i].time,
                    style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  onTap: () {
                    print("Status Detail Pressed");
                  },
                ),
                const Divider(
                  height: 10.0,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
