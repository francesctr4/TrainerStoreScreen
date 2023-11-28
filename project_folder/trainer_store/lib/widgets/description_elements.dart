import 'package:flutter/material.dart';
import 'package:trainer_store/model/trainer.dart';

class DescriptionElements extends StatelessWidget {
  const DescriptionElements({
    super.key,
    required this.trainer,
  });

  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Description",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                        size: 20,
                      ),
                    ),
                    Text(
                      "(${trainer.rate})",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
          child: Text(
            trainer.description,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              height: 1.5,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
