import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class messageExchange extends StatefulWidget {
  messageExchange({Key? key}) : super(key: key);

  @override
  State<messageExchange> createState() => _messageExchangeState();
}

class _messageExchangeState extends State<messageExchange> {
  static const styleSender = BubbleStyle(
    margin: const BubbleEdges.only(top: 10),
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftTop,
    showNip: false,
  );
  static const styleReceiver = BubbleStyle(
    margin: const BubbleEdges.only(top: 10),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
    showNip: false,
    color: const Color.fromRGBO(225, 255, 199, 1),
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Bubble(
          alignment: Alignment.center,
          color: const Color.fromRGBO(212, 234, 244, 1),
          child: const Text('TODAY',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11)),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
      ],
    );
  }
}
