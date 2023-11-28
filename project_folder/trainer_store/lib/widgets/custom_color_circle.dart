import 'package:flutter/material.dart';

class CustomColorCircle extends StatelessWidget {
  const CustomColorCircle({
    super.key,
    required this.color,
    required this.selected,
  });

  final Color color;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(
            side: selected
                ? const BorderSide(
                    color: Color.fromRGBO(221, 219, 240, 1),
                    width: 4,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  )
                : BorderSide.none,
          ),
          backgroundColor: color,
          minimumSize: const Size(36, 36),
        ),
        child: null,
      ),
    );
  }
}
