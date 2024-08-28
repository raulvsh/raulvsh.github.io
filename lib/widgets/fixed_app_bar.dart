import 'package:flutter/material.dart';

class FixedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FixedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        child: const Text(
          'raulvelasco.dev',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      actions: <Widget>[
        _buildIconButton(context, Icons.work, 'Portfolio', '/portfolio'),
        _buildIconButton(context, Icons.person, 'Currículum', '/curriculum'),
        _buildIconButton(context, Icons.book, 'Libros', '/books'),
      ],
    );
  }

  Widget _buildIconButton(BuildContext context, IconData icon, String label, String route) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.white),
          const SizedBox(width: 8.0),
          Text(
            label.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
