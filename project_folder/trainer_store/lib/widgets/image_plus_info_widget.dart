import 'package:flutter/material.dart';
import 'package:trainer_store/model/trainer.dart';
import 'package:trainer_store/widgets/image_area_elements.dart';
import 'package:trainer_store/widgets/info_area_elements.dart';

class ImagePlusInfoWidget extends StatelessWidget {
  const ImagePlusInfoWidget({
    super.key,
    required this.photoHeight,
    required this.trainer,
  });

  final double photoHeight;
  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 28),
          child: Column(
            children: [
              ImageAreaElements(photoHeight: photoHeight, trainer: trainer),
              InfoAreaElements(trainer: trainer),
            ],
          ),
        ),
      ),
    );
  }
}
