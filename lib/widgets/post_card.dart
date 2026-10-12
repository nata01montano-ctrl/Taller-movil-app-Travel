import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String userName;
  final String description;
  final String imageUrl;

  const PostCard({
    super.key,
    required this.userName,
    required this.description,
    required this.imageUrl,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(widget.userName),
          ),

          Image.network(
            widget.imageUrl,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(widget.description),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {
                  setState(() {
                    liked = !liked;
                  });
                },
              ),
              const Icon(Icons.comment),
            ],
          ),
        ],
      ),
    );
  }
}
