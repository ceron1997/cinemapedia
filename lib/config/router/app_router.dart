import 'package:cinemapedia/presentation/widgets/shared/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cinemapedia/presentation/screens/screens.dart';
import 'package:cinemapedia/presentation/views/views.dart';
// StatefulShellRoute y StatefulShellBranch son parte de la librería go_router
// y permiten crear rutas con estado que pueden mantener su estado entre diferentes ramas de navegación.
// lo uso cuando tengo una barra de navegación inferior y quiero que cada pestaña mantenga su estado
// al cambiar entre ellas.


final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return Scaffold(
            body: navigationShell,
            bottomNavigationBar: CustomBottomNavigation(
              currentIndex:
                  navigationShell.currentIndex, // Pasa el índice actual
            ));
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomeView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: '/',
                builder: (context, state) => const HomeView(),
                routes: [
                  GoRoute(
                    path: 'movie/:id',
                    name: MovieScreen.name,
                    builder: (context, state) {
                      final movieId = state.pathParameters['id'] ?? 'no-id';

                      return MovieScreen(movieId: movieId);
                    },
                  ),
                ]),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/favorites',
              builder: (context, state) => const FavoritesView(),
            ),
          ],
        ),
      ],
    ),
  ],
);




// final appRouter = GoRouter(initialLocation: '/', routes: [
//   ShellRoute(
//       builder: (context, state, child) {
//         return HomeScreen(childView: child);
     
//       },
//       routes: [
//         GoRoute(
//             path: '/',
//             builder: (context, state) {
//               return const HomeView();
//             },
//             routes: [
//               GoRoute(
//                 path: 'movie/:id',
//                 name: MovieScreen.name,
//                 builder: (context, state) {
//                   final movieId = state.pathParameters['id'] ?? 'no-id';

//                   return MovieScreen(movieId: movieId);
//                 },
//               ),
//             ]),
//         GoRoute(
//           path: '/favorites',
//           builder: (context, state) {
//             return const FavoritesView();
//           },
//         ),
//       ]),

//   // Rutas padre/hijo
//   // GoRoute(
//   //   path: '/',
//   //   name: HomeScreen.name,
//   //   builder: (context, state) => const HomeScreen( childView: HomeView(), ),
//   //   routes: [
//   //      GoRoute(
//   //       path: 'movie/:id',
//   //       name: MovieScreen.name,
//   //       builder: (context, state) {
//   //         final movieId = state.params['id'] ?? 'no-id';

//   //         return MovieScreen( movieId: movieId );
//   //       },
//   //     ),
//   //   ]
//   // ),
// ]);
