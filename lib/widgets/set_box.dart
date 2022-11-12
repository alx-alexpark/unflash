import 'package:flutter/material.dart';
import 'package:harvesthacks2022/pages/flashcard_view.dart';

class SetBox extends StatelessWidget {
  final String setName;
  final int cardsAmount;
  final String id;

  const SetBox({
    super.key,
    required this.setName,
    required this.cardsAmount,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FlashcardView(
              terms: [
                {"term": "sus", "definition": "mogus"},
                {"term": "sus", "definition": "mogus"},
              ],
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(3),
        width: 100,
        height: 100,
        color: const Color(0xFF6159D0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              setName,
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              "$cardsAmount terms",
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}