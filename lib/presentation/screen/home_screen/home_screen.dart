import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/presentation/provider/isar_conecction_provider.dart';
import 'package:tortilleria_chaly/presentation/screen/list_client_screen/list_client_screen.dart';
import 'package:tortilleria_chaly/presentation/screen/sale_screen/sales_screen/sales_screen.dart';

part 'custom_botton_navigator_bar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const path = "/HomeScreen";

  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final PageController _pageController = PageController(initialPage: 1);

  /*final List<Widget> _pagesList = [
    const ListClientScreen(),
    SalesScreen(),
    Container(color: Colors.blue),
  ];
  */

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ref.watch(isarConnectionProvider).openDB(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        }
        return SafeArea(
          child: Scaffold(
            body: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: [
                  const ListClientScreen(),
                  SalesScreen(),
                  Container(color: Colors.blue),
                ]),
            bottomNavigationBar: _CustomBottonNavigatorBar(
              pageController: _pageController,
            ),
          ),
        );
      },
    );
  }
}
