import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_ap_p/core/constant/app_dimens.dart';
import 'package:movies_ap_p/core/constant/app_strings.dart';
import 'package:movies_ap_p/core/router/app_routes.dart';

class MainScreen extends StatelessWidget {
  final Widget child;

  const MainScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    final List<String> routes = [
      AppRoutes.moviesScreen,
      AppRoutes.tvShowsScreen,
      AppRoutes.searchScreen,
      AppRoutes.watchlistScreen,
    ];

    // ignore: no_leading_underscores_for_local_identifiers
    int _getSelectedIndex(BuildContext context) {
      final String location = GoRouterState.of(context).uri.toString();
      return routes
          .indexWhere((route) => location.startsWith(route))
          .clamp(0, routes.length - 1);
    }

    return StatefulBuilder(
      builder: (context, setState) {
        int selectedIndex = _getSelectedIndex(context);
        final double iconSize = Dimens.size20;

        return BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_rounded, size: iconSize),
              label: AppStrings.movies,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv_rounded, size: iconSize),
              label: AppStrings.shows,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded, size: iconSize),
              label: AppStrings.search,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_rounded, size: iconSize),
              label: AppStrings.watchlist,
            ),
          ],
          currentIndex: selectedIndex,
          onTap: (index) {
            if (selectedIndex != index) {
              context.go(routes[index]);
            }
          },
          type: BottomNavigationBarType.fixed,
        );
      },
    );
  }
}
