import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/styles.dart';

class GridTileWidget extends StatefulWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const GridTileWidget({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.onTap,

    super.key,
  });

  @override
  GridTileWidgetState createState() => GridTileWidgetState();
}

class GridTileWidgetState extends State<GridTileWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap, 

        child: Card(
          color: _isHovered
              ? Colors.white
              : AppColors.transparentCardBackground, // Color en hover y sin hover
          shape: AppCardStyles.roundedRectangleBorder2,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  widget.imagePath,
                  height: 120.0,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    widget.title,
                    style: AppTextStyles.title1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  widget.subtitle,
                  style: AppTextStyles.text18Black87Height1_5,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
