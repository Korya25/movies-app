import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_ap_p/core/resources/router/app_routes.dart';
import 'package:movies_ap_p/core/presentation/screen/main_screen.dart';
import 'package:movies_ap_p/features/movies/presentation/screens/movie_details_screen.dart';
import 'package:movies_ap_p/features/movies/presentation/screens/movies_screen.dart';
import 'package:movies_ap_p/features/movies/presentation/screens/popular_movies_screen.dart';
import 'package:movies_ap_p/features/movies/presentation/screens/top_rated_movies_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.moviesScreen,
    routes: [
      ShellRoute(
        builder: (context, state, child) => MainScreen(child: child),
        routes: [
          GoRoute(
            name: AppRoutes.moviesScreen,
            path: AppRoutes.moviesScreen,
            pageBuilder:
                (context, state) =>
                    const NoTransitionPage(child: MoviesScreen()),
            routes: [
              GoRoute(
                name: AppRoutes.movieDetailsScreen,
                path: AppRoutes.movieDetailsScreen,
                pageBuilder:
                    (context, state) =>
                        CupertinoPage(child: MovieDetailsScreen()),
              ),
              GoRoute(
                name: AppRoutes.popularMoviesScreen,
                path: AppRoutes.popularMoviesScreen,
                pageBuilder:
                    (context, state) =>
                        const CupertinoPage(child: PopularMoviesScreen()),
              ),
              GoRoute(
                name: AppRoutes.topRatedMoviesScreen,
                path: AppRoutes.topRatedMoviesScreen,
                pageBuilder:
                    (context, state) =>
                        const CupertinoPage(child: TopRatedMoviesScreen()),
              ),
            ],
          ),
          GoRoute(
            name: AppRoutes.tvShowsScreen,
            path: AppRoutes.tvShowsScreen,
            pageBuilder:
                (context, state) => const NoTransitionPage(
                  child: Scaffold(
                    body: Center(
                      child: Text(
                        'TV Shows Screen',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
            routes: [
              GoRoute(
                name: AppRoutes.tvShowDetailsScreen,
                path: AppRoutes.tvShowDetailsScreen,
                pageBuilder:
                    (context, state) => CupertinoPage(
                      child: Scaffold(
                        body: Center(
                          child: Text(
                            'TV Show Details Screen',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
              ),
              GoRoute(
                name: AppRoutes.popularTvShowsScreen,
                path: AppRoutes.popularTvShowsScreen,
                pageBuilder:
                    (context, state) => const CupertinoPage(
                      child: Scaffold(
                        body: Center(
                          child: Text(
                            'Popular TV Shows Screen',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
              ),
              GoRoute(
                name: AppRoutes.topRatedTvShowsScreen,
                path: AppRoutes.topRatedTvShowsScreen,
                pageBuilder:
                    (context, state) => const CupertinoPage(
                      child: Scaffold(
                        body: Center(
                          child: Text(
                            'Top Rated TV Shows Screen',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
              ),
            ],
          ),
          GoRoute(
            name: AppRoutes.searchScreen,
            path: AppRoutes.searchScreen,
            pageBuilder:
                (context, state) => const NoTransitionPage(
                  child: Scaffold(
                    body: Center(
                      child: Text(
                        'Search Screen',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
          ),
          GoRoute(
            name: AppRoutes.watchlistScreen,
            path: AppRoutes.watchlistScreen,
            pageBuilder:
                (context, state) => const NoTransitionPage(
                  child: Scaffold(
                    body: Center(
                      child: Text(
                        'Watchlist Screen',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
          ),
        ],
      ),
    ],
  );
}
