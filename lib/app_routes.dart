import 'package:flutter/material.dart';
import 'package:raulvelasco_dev/screens/books_main_screen.dart';
import 'package:raulvelasco_dev/screens/curriculum_screen.dart';
import 'package:raulvelasco_dev/screens/home_screen.dart';
import 'package:raulvelasco_dev/screens/navigator_screen.dart';
import 'package:raulvelasco_dev/screens/portfolio/hepapp_detail_sceen.dart';
import 'package:raulvelasco_dev/screens/portfolio/rssport_detail_screen.dart';
import 'package:raulvelasco_dev/screens/portfolio/solucioneshosteleras_detail_screen.dart';
import 'package:raulvelasco_dev/screens/portfolio_screen.dart';

class AppRoutes {
  static const home = '/';
  static const portfolio = '/portfolio';
  static const curriculum = '/curriculum';
  static const books = '/books';
  static const hepAppDetail = '/hepapp';
  static const rssportDetail = '/rssport';
  static const solucionesHostelerasDetail = '/solucioneshosteleras';

  static Route<dynamic> generateRoute(RouteSettings settings) {
      print("Generating route for: ${settings.name}");

    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case portfolio:
        return MaterialPageRoute(builder: (_) => const PortfolioScreen());
      case curriculum:
        return MaterialPageRoute(builder: (_) => const CurriculumScreen());
      case books:
        return MaterialPageRoute(builder: (_) => const BooksMainScreen());
      case hepAppDetail:
        return MaterialPageRoute(builder: (_) => const HepAppDetailScreen());
      case rssportDetail:
        return MaterialPageRoute(builder: (_) => const RSSportDetailScreen());
      case solucionesHostelerasDetail:
        return MaterialPageRoute(builder: (_) => const SolucionesHostelerasDetailScreen());
      default:
        return MaterialPageRoute(builder: (_) => const NavigatorScreen());
    }
  }
}
