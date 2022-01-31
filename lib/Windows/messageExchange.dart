import 'package:flutter/material.dart';

class messageExchange extends StatefulWidget {
  messageExchange({Key? key}) : super(key: key);

  @override
  State<messageExchange> createState() => _messageExchangeState();
}

class _messageExchangeState extends State<messageExchange> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Message'),
    );
  }
}
