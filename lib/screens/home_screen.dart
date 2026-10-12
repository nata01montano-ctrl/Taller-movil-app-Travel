import 'package:flutter/material.dart';
import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [

        PromotionalBanner(),

        SizedBox(height: 10),

        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "Destinos recomendados",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        ImageCarousel(),

        PostCard(
          userName: "Natalia",
          description: "Visitando París",
          imageUrl:
          "https://media.staticroot.com/tr:w-1920,c-at_max:q-60/DAM/Photos/Destinations/Europe/France/Paris/shutterstock_112137761",
        ),

        PostCard(
          userName: "Carlos",
          description: "Vacaciones en Roma",
          imageUrl:
          "https://tourismmedia.italia.it/is/image/mitur/20220127150143-colosseo-roma-lazio-shutterstock-756032350-2?wid=1600&hei=900&fit=constrain,1&fmt=webp",
        ),
      ],
    );
  }
}
