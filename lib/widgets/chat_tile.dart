import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {

  final String name;
  final String message;
  final String time;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading: const CircleAvatar(
        child: Icon(Icons.person),
      ),

      title: Text(name),

      subtitle: Text(message),

      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time),

          Container(
            margin: const EdgeInsets.only(top: 5),
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
          )
        ],
      ),
    );
  }
}
