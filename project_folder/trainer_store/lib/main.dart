import 'package:flutter/material.dart';
import 'package:trainer_store/model/trainer.dart';
import 'package:trainer_store/screens/trainer_screen.dart';

void main() {
  runApp(const TrainerStoreApp());
}

const selectedTrainer = Trainer(
  brand: "Nike Air Jordan",
  name: "Nike Air Jordan",
  version: "1 Mid 2021",
  imagePath: "resources/trainerImage.png",
  description:
      "The Air Jordan 1 Mid Show is inspired by the first AJ1, offering"
      " tons of Jordan fans a chance to follow in the footsteps of greatness.",
  size: 44,
  price: 115.00,
  rate: 5.0,
  quantityBought: 2,
  addedToCart: 1,
);

class TrainerStoreApp extends StatelessWidget {
  const TrainerStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TrainerScreen(
        trainer: selectedTrainer,
      ),
    );
  }
}
