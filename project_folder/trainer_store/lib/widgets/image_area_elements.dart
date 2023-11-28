import 'package:flutter/material.dart';
import 'package:trainer_store/model/trainer.dart';
import 'package:trainer_store/widgets/dot_row.dart';

class ImageAreaElements extends StatelessWidget {
  const ImageAreaElements({
    super.key,
    required this.photoHeight,
    required this.trainer,
  });

  final double photoHeight;
  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
          child: Container(
            height: photoHeight,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(226, 224, 237, 1),
                borderRadius: BorderRadius.circular(16)),
            child: Stack(
              children: [
                Center(
                  child: Image(
                    image: AssetImage(trainer.imagePath),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 18, 6, 15),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: Colors.red,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 4),
                        child: Icon(
                          Icons.favorite,
                          color: Color.fromRGBO(226, 224, 237, 1),
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: DotRow(
                    numDots: 5,
                    selected: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
