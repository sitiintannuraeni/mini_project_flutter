import 'package:flutter/material.dart';

class DetailContentWidget extends StatelessWidget {
  final String imageUrl;
  final String author;

  // ignore: use_key_in_widget_constructors
  const DetailContentWidget({required this.imageUrl, required this.author});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          imageUrl, 
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Taken by: $author",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 16, 
                fontStyle: FontStyle.italic
              ),
            ),
          ),
        ),
      ],
    );
  }
}