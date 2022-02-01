import 'package:flutter/material.dart';

class StatusModel {
  final String name;
  final String time;
  final String? profilePic;

  StatusModel({
    required this.name,
    required this.time,
    required this.profilePic,
  });
}

List<StatusModel> statusLog = [
  StatusModel(
    name: "Manyu",
    time: "10:10",
    profilePic: "lib/models/images/avatar-1.jpg",
  ),
  StatusModel(
    name: "Manas Dhyani",
    time: "1:23",
    profilePic: "lib/models/images/avatar-2.jpg",
  ),
  StatusModel(
    name: "Pooja Dhyani",
    time: "11:23",
    profilePic: "lib/models/images/avatar-3.jpg",
  ),
  StatusModel(
    name: "Pankaj Dhyani",
    time: "12:23",
    profilePic: "lib/models/images/gallery-1.jpg",
  ),
  StatusModel(
    name: "Aman Sharma",
    time: "9:20",
    profilePic: null,
  ),
];
