import 'package:flutter/material.dart';
import 'package:couldai_user_app/theme/colors.dart';
import 'package:couldai_user_app/widgets/server_rail.dart';
import 'package:couldai_user_app/widgets/channel_rail.dart';
import 'package:couldai_user_app/widgets/chat_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Using a LayoutBuilder to handle responsiveness if needed later
    // For now, we implement the classic 3-column layout
    return Scaffold(
      body: Row(
        children: const [
          // 1. Server Rail (Leftmost, narrow)
          SizedBox(
            width: 72,
            child: ServerRail(),
          ),
          
          // 2. Channel Rail (Middle, medium width)
          SizedBox(
            width: 240,
            child: ChannelRail(),
          ),
          
          // 3. Chat View (Right, expands to fill)
          Expanded(
            child: ChatView(),
          ),
        ],
      ),
    );
  }
}
