import 'package:flutter/material.dart';
import 'package:trainer_store/model/trainer.dart';

class CustomCartIcon extends StatelessWidget {
  const CustomCartIcon({
    super.key,
    required this.trainer,
  });

  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        IconButton(
          icon: const Icon(
            Icons.shopping_cart,
          ),
          onPressed: () {},
        ),
        if (trainer.addedToCart > 0)
          Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
                strokeAlign: BorderSide.strokeAlignCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 1),
              child: Center(
                child: Text(
                  "${trainer.addedToCart}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
