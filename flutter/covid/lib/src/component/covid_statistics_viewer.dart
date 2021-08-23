import 'package:covid/src/canvas/arrow_clip_path.dart';
import 'package:covid/src/utils/data_utils.dart';
import 'package:flutter/material.dart';

class CovidStatisticsViewer extends StatelessWidget {
  final String title;
  final double addedCount;
  final ArrowDirection upDown;
  final double totalCount;
  final bool dense;
  final Color titleColor;
  final Color subValueColor;
  final double spacing;

  CovidStatisticsViewer({
    Key? key,
    required this.title,
    required this.addedCount,
    required this.upDown,
    required this.totalCount,
    this.titleColor = const Color.fromRGBO(165, 165, 167, 1),
    this.spacing = 10,
    this.subValueColor = Colors.black,
    this.dense = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? color = Colors.black;
    switch (upDown) {
      case ArrowDirection.UP:
        color = Colors.red[400];
        break;
      case ArrowDirection.MIDDLE:
        break;
      case ArrowDirection.DOWN:
        color = Color.fromRGBO(59, 71, 161, 1);
        break;
      default:
    }

    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontSize: dense ? 14 : 18,
            ),
          ),
          SizedBox(
            height: spacing,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipPath(
                clipper: ArrowClipPath(direction: upDown),
                child: Container(
                  width: dense ? 10 : 20,
                  height: dense ? 10 : 20,
                  color: color,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                DataUtils.numberFormat(addedCount),
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: dense ? 25 : 50,
                ),
              ),
            ],
          ),
          SizedBox(
            height: spacing * 0.5,
          ),
          Text(
            DataUtils.numberFormat(totalCount),
            style: TextStyle(
              color: subValueColor,
              fontSize: dense ? 15 : 20,
            ),
          ),
        ],
      ),
    );
  }
}
