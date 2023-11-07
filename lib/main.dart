
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:testapp20131007/router/go_routers.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();

  //if (kIsWeb) {
    /// 웹브라우저에서 '#' 삭제 flutter_web_plugins
    usePathUrlStrategy();
  //}

  runApp(const ProviderScope(child: MyApp()));
}


class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  final GlobalKey<NavigatorState> rootNavKey =
  GlobalKey<NavigatorState>(debugLabel: 'root');
  ThemeMode themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final GoRouter router = ref.watch(routerProvider(rootNavKey));
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Pronto',
        themeMode: ThemeMode.light,
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
      ),
    );
  }
}
