import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../page/test_page.dart';


var routerProvider = Provider.family<GoRouter, GlobalKey<NavigatorState>>(
    (ProviderRef<GoRouter> ref, GlobalKey<NavigatorState> rootNavKey) {

  final ValueNotifier<User?> refreshListenable = ValueNotifier<User?>(null);

  return GoRouter(
    navigatorKey: rootNavKey,
    initialLocation: '/home',
    refreshListenable: refreshListenable,
    routes: <RouteBase>[
      /// Test Page
      GoRoute(
          path: '/home',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return NoTransitionPage<void>(
              key: state.pageKey,
              restorationId: state.pageKey.value,
              child: const TestPage(),
            );
          }),
    ],
  );
});

///-------------------------------------------------------------------
