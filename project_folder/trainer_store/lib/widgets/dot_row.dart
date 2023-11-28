import 'package:flutter/material.dart';

const double dotHeight = 10;
const double dotRowHeight = dotHeight + 18;

class DotRow extends StatelessWidget {
  final int numDots;
  final int selected;
  const DotRow({
    super.key,
    required this.numDots,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < numDots; i++) _Dot(active: i == selected),
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final bool active;
  const _Dot({required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dotHeight,
      height: dotHeight,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active
            ? const Color.fromARGB(255, 150, 146, 146)
            : Colors.white.withAlpha(150),
      ),
    );
  }
}
