import 'package:flutter/material.dart';

import '../../models/chat_message.dart';
import '../home/components/chat_container.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('ChattingPage() 메모리 호출 확인()');
    return ListView(
      children: [
        // ..위젯 만들어서 두 개 내려줄 생각
        ChatContainer(
          chatMessage: chatMessageList[0],
        ),
      ],
    );
  }
}
