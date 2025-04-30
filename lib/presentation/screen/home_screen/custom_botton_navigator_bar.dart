
part of 'home_screen.dart';

class _CustomBottonNavigatorBar extends StatefulWidget {
  final PageController pageController;
  const _CustomBottonNavigatorBar({
    required this.pageController,
  });

  @override
  State<_CustomBottonNavigatorBar> createState() =>
      _CustomBottonNavigatorBarState();
}

class _CustomBottonNavigatorBarState extends State<_CustomBottonNavigatorBar> {
  int index = 1;

  BottomNavigationBarItem _getBottomNavigationBarItem({
    required String label,
    required Icon selectedIcon,
    required Icon unselectedIcon,
  }) {
    return BottomNavigationBarItem(
      icon: unselectedIcon,
      activeIcon: selectedIcon,
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: index,
      onTap: (value) {
        if (widget.pageController.page!.ceil() != value) {
          widget.pageController.jumpToPage(value);
          setState(() {
            index = value;
          });
        }
      },
      items: [
        _getBottomNavigationBarItem(
          label: "Clientes",
          selectedIcon: const Icon(Icons.person_outlined),
          unselectedIcon: const Icon(Icons.person),
        ),
        _getBottomNavigationBarItem(
          label: "Resumen",
          selectedIcon: const Icon(Icons.list_alt),
          unselectedIcon: const Icon(Icons.list),
        ),
        _getBottomNavigationBarItem(
          label: "Gastos",
          selectedIcon: const Icon(Icons.home_outlined),
          unselectedIcon: const Icon(Icons.home),
        ),
      ],
    );
  }
}
