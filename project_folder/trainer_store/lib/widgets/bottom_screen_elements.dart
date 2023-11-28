import 'package:flutter/material.dart';
import 'package:trainer_store/model/trainer.dart';

class BottomScreenElements extends StatelessWidget {
  const BottomScreenElements({
    super.key,
    required this.trainer,
  });

  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.remove_circle_outline,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(9, 0, 8, 2),
                      child: Text(
                        "${trainer.quantityBought}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.add_circle_outline,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 30, 0),
                child: Text(
                  "Total: \$${trainer.quantityBought * trainer.price}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(380, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                "Add to cart",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 248, 211, 108),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
