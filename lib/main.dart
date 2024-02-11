import 'package:coffee_shop/presentation/pages/detail_page.dart';
import 'package:coffee_shop/presentation/pages/getstarted_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'presentation/bloc/navigation/navigation_bloc.dart';
import 'presentation/main_navigation.dart';
import 'presentation/pages/home_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: GetStartedPage.routeName,
        builder: (context, state) => const GetStartedPage(),
      ),
      GoRoute(
        path: MainNavigation.routeName,
        builder: (context, state) => const MainNavigation(),
      ),
      GoRoute(
        path: HomePage.routeName,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '${DetailPage.routeName}/:id',
        builder: (context, state) => DetailPage(
          id: state.pathParameters['id'] ?? '',
        ),
      ),
    ],
    initialLocation: GetStartedPage.routeName,
    debugLogDiagnostics: true,
    routerNeglect: true,
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationBloc(),
        ),
       
      ],
      child: MaterialApp.router(
        debugShowMaterialGrid: false,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
