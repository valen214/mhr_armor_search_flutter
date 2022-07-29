import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:mhr_armor_search/pages/page_template.dart';

import '../../main_router.dart';

class SlotSelector extends StatefulWidget {
  const SlotSelector({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SlotSelectorState();
}

// https://stackoverflow.com/q/46681318
class _SlotSelectorState extends State<SlotSelector> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _SquareDecoImage(
          imagePath: 'deco/deco1.png',
        ),
        _SquareDecoImage(
          imagePath: 'deco/deco2.png',
        ),
        _SquareDecoImage(
          imagePath: 'deco/deco3.png',
        ),
        _SquareDecoImage(
          imagePath: 'deco/deco4.png',
        ),
      ],
    );
  }
}

class _SquareDecoImage extends StatelessWidget {
  _SquareDecoImage({
    Key? key,
    required this.imagePath,
    this.dimension = 30,
  }) : super(key: key);

  final String imagePath;
  double dimension;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: dimension,
      child: Image(image: AssetImage(imagePath)),
    );
  }
}
