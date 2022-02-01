import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final String? profilePic;
  final Icon callType;

  CallModel({
    required this.name,
    required this.time,
    required this.profilePic,
    required this.callType,
  });

  static Icon callReceived = const Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );

  static Icon callMissed = const Icon(
    Icons.call_missed,
    size: 18,
    color: Colors.red,
  );
}

List<CallModel> callLog = [
  CallModel(
      name: "Manyu",
      time: "10:10",
      profilePic: "lib/models/images/avatar-1.jpg",
      callType: CallModel.callReceived),
  CallModel(
      name: "Manas Dhyani",
      time: "1:23",
      profilePic: "lib/models/images/avatar-2.jpg",
      callType: CallModel.callReceived),
  CallModel(
      name: "Pooja Dhyani",
      time: "11:23",
      profilePic: "lib/models/images/avatar-3.jpg",
      callType: CallModel.callMissed),
  CallModel(
      name: "Pankaj Dhyani",
      time: "12:23",
      profilePic: "lib/models/images/gallery-1.jpg",
      callType: CallModel.callReceived),
  CallModel(
      name: "Aman Sharma",
      time: "9:20",
      profilePic: null,
      callType: CallModel.callMissed),
];
