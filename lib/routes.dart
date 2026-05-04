import 'package:flutter/material.dart';

import 'screens/detail_page.dart';
import 'screens/home_page.dart';
import 'screens/list_page.dart';

class AppRoutes {
  static const String home = '/home';
  static const String list = '/list';
  static const String detail = '/detail';

  static Map<String, WidgetBuilder> get routes => {
        home: (_) => const HomePage(),
        list: (_) => const ListPage(),
        detail: (context) {
          final args = ModalRoute.of(context)?.settings.arguments
              as Map<String, dynamic>?;
          final index = args?['index'] as int? ?? 0;
          final text = args?['text'] as String? ?? 'Sin datos';

          return DetailPage(index: index, text: text);
        },
      };
}
