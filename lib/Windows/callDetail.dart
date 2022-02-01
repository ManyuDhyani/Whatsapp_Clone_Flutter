import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/Windows/palette.dart';
import 'package:whatsapp_clone_flutter/models/callModels.dart';

class callDetailWindow extends StatefulWidget {
  callDetailWindow({Key? key}) : super(key: key);

  @override
  State<callDetailWindow> createState() => _callDetailWindowState();
}

class _callDetailWindowState extends State<callDetailWindow> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callLog.length,
        itemBuilder: (context, i) => Column(
              children: [
                const Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(callLog[i].profilePic ??
                        'lib/models/images/profile.png'),
                  ),
                  title: Text(
                    callLog[i].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Container(
                        child: callLog[i].callType,
                      ),
                      Text(
                        callLog[i].time,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.call,
                    size: 25,
                    color: Palette.navColor,
                  ),
                  onTap: () {
                    print("Call Detail Pressed");
                  },
                )
              ],
            ));
  }
}
