import 'package:go_router/go_router.dart';
import 'package:tortilleria_chaly/presentation/screen/create_client_screen/create_client_screen.dart';
import 'package:tortilleria_chaly/presentation/screen/home_screen/home_screen.dart';
import 'package:tortilleria_chaly/presentation/screen/list_client_screen/list_client_screen.dart';
import 'package:tortilleria_chaly/presentation/screen/view_client_screen/view_client_screen.dart';

final routerConfig = GoRouter(
  initialLocation: HomeScreen.path,
  routes: [
    //HomeScreen
    GoRoute(
      path: HomeScreen.path,
      name: HomeScreen.path,
      builder: (context, state) => const HomeScreen(),
    ),

    //CreateClientScreen
    GoRoute(
      path: CreateClientScreen.path,
      name: CreateClientScreen.path,
      builder: (context, state) => CreateClientScreen(),
    ),

    //ListClientScreen
    GoRoute(
      path: ListClientScreen.path,
      name: ListClientScreen.path,
      builder: (context, state) => const ListClientScreen(),
    ),

    //ViewClientScreen
    GoRoute(
      path: "${ViewClientScreen.path}/:id",
      name: ViewClientScreen.path,
      builder: (context, state) {
        final idClient = int.parse(state.pathParameters["id"]!);
        return ViewClientScreen(idClient: idClient);
      },
    ),
  ],
);


