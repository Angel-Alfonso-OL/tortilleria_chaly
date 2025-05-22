import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/domain/entities/summary/summary.dart';
import 'package:tortilleria_chaly/presentation/provider/isar_conecction_provider.dart';
import 'package:tortilleria_chaly/presentation/provider/summary_db_provider.dart';
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

  final List<Widget> _pagesList = [
    const ListClientScreen(),
    SalesScreen(),
    Container(color: Colors.blue),
  ];
  @override
  initState() {
    ref.watch(isarConnectionProvider);
    //a(ref);
  }

  Future<void> a(WidgetRef ref) async {
    final a = await ref.read(summaryDbProvider).getAllSummary();
    if (a[a.length - 1].date.day != DateTime.now().day) {
      await ref.read(summaryDbProvider).createSummary(Summary(
            tortillasHechas: 0,
            tortillasSobrantes: 0,
            tortillasVendidas: 0,
            tortillasVendidasEspeciales: 0,
            tortillasVendidasTienda: 0,
            totalFiados: 0,
            totalPagados: 0,
            date: DateTime.now(),
          ));
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: _pagesList),
        bottomNavigationBar: _CustomBottonNavigatorBar(
          pageController: _pageController,
        ),
      ),
    );
  }
}
