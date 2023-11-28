import 'package:flutter/material.dart';
import 'package:trainer_store/model/trainer.dart';
import 'package:trainer_store/widgets/custom_color_circle.dart';

class InfoAreaElements extends StatelessWidget {
  const InfoAreaElements({
    super.key,
    required this.trainer,
  });

  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                trainer.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                trainer.version,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomColorCircle(
                    color: Color.fromRGBO(155, 154, 198, 1),
                    selected: true,
                  ),
                  CustomColorCircle(
                    color: Color.fromRGBO(219, 74, 21, 1),
                    selected: false,
                  ),
                  CustomColorCircle(
                    color: Color.fromRGBO(37, 171, 164, 1),
                    selected: false,
                  ),
                  CustomColorCircle(
                    color: Color.fromRGBO(152, 187, 215, 1),
                    selected: false,
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 24),
                child: Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      "\$${trainer.price}",
                      style: const TextStyle(
                        color: Color.fromARGB(255, 248, 211, 108),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Size:",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                        child: Center(
                          child: Text(
                            "${trainer.size}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
