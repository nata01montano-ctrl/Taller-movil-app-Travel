import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: const [

        ChatTile(
          name: "Juan",
          message: "Hola, ¿cómo estás?",
          time: "9:00",
        ),

        ChatTile(
          name: "Laura",
          message: "Nos vemos mañana",
          time: "10:30",
        ),

        ChatTile(
          name: "Andrés",
          message: "Perfecto",
          time: "11:20",
        ),

        ChatTile(
          name: "Camila",
          message: "Gracias",
          time: "12:00",
        ),

        ChatTile(
          name: "Daniel",
          message: "Hasta luego",
          time: "1:15",
        ),
      ],
    );
  }
}
