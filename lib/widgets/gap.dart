import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({
    super.key,
    this.h = 10,
    this.v = 10,
  });

  final double h;
  final double v;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: v,
      width: h,
    );
  }
}
