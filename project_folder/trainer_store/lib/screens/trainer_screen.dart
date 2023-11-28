import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainer_store/model/trainer.dart';
import 'package:trainer_store/widgets/bottom_screen_elements.dart';
import 'package:trainer_store/widgets/description_elements.dart';
import 'package:trainer_store/widgets/image_plus_info_widget.dart';
import 'package:trainer_store/widgets/top_screen_elements.dart';

class TrainerScreen extends StatelessWidget {
  const TrainerScreen({
    super.key,
    required this.trainer,
  });

  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    const double photoHeight = 300;
    return Provider.value(
      value: trainer,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(221, 219, 240, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(246, 244, 252, 1),
                  borderRadius: BorderRadius.circular(70)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TopScreenElements(trainer: trainer),
                  ImagePlusInfoWidget(
                      photoHeight: photoHeight, trainer: trainer),
                  DescriptionElements(trainer: trainer),
                  BottomScreenElements(trainer: trainer),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
