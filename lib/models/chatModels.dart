class ChatModel {
  final String name;
  final String message;
  final String time;
  final String? profilePic;
  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.profilePic});
}

List<ChatModel> user = [
  ChatModel(
    name: "Manyu",
    message: "Hi Bruhhhh",
    time: "10:10",
    profilePic: "lib/models/images/avatar-1.jpg",
  ),
  ChatModel(
    name: "Manas Dhyani",
    message: "kaha hai bhai",
    time: "1:23",
    profilePic: "lib/models/images/avatar-2.jpg",
  ),
  ChatModel(
    name: "Pooja Dhyani",
    message: "kaha hai bhai",
    time: "11:23",
    profilePic: "lib/models/images/avatar-3.jpg",
  ),
  ChatModel(
    name: "Pankaj Dhyani",
    message: "kaha hai bhai",
    time: "12:23",
    profilePic: "lib/models/images/gallery-1.jpg",
  ),
  ChatModel(
    name: "Aman Sharma",
    message: "kaha hai bhai tu",
    time: "9:20",
    profilePic: null,
  ),
  ChatModel(
    name: "Akriti Sharma",
    message: "kaha hai bhai tu",
    time: "7:07",
    profilePic: "lib/models/images/avatar-3.jpg",
  ),
  ChatModel(
    name: "Sachine Rawat",
    message: "kaha hai bhai tu",
    time: "7:07",
    profilePic: "lib/models/images/gallery-1.jpg",
  ),
  ChatModel(
    name: "Anchal",
    message: "kaha hai bhai tu",
    time: "7:07",
    profilePic: null,
  ),
  ChatModel(
    name: "Manaal",
    message: "kaha hai bhai tu",
    time: "7:07",
    profilePic: "lib/models/images/gallery-1.jpg",
  ),
  ChatModel(
    name: "Ritika Sharma",
    message: "kaha hai bhai tu",
    time: "7:07",
    profilePic: null,
  ),
];
