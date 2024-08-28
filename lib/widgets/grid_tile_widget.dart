import 'package:flutter/material.dart';

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
  _GridTileWidgetState createState() => _GridTileWidgetState();
}

class _GridTileWidgetState extends State<GridTileWidget> {
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
              : Color.fromARGB(
                  210, 255, 255, 255), // Color en hover y sin hover
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.0),
          ),

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
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  widget.subtitle,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.black87,
                  ),
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
