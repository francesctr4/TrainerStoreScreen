import 'package:flutter/material.dart';
import 'package:trainer_store/model/trainer.dart';
import 'package:trainer_store/widgets/custom_cart_icon.dart';

class TopScreenElements extends StatelessWidget {
  const TopScreenElements({
    super.key,
    required this.trainer,
  });

  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 40, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                const BackButton(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 4),
                  child: Text(
                    trainer.brand,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: CustomCartIcon(trainer: trainer),
          ),
        ],
      ),
    );
  }
}
