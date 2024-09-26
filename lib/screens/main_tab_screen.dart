import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class MainTabScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const MainTabScreen(this.navigationShell, {super.key});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  late int _currentIndex;
  @override
  void initState() {
    _currentIndex = widget.navigationShell.currentIndex;
    super.initState();
  }

  void changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
    widget.navigationShell.goBranch(_currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: _currentIndex,
          onTap: (value) {
            changeTab(value);
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home_icon.svg',
                color: _currentIndex == 0
                    ? theme.colorScheme.primary
                    : Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/portfolio_icon.svg',
                color: _currentIndex == 1
                    ? theme.colorScheme.primary
                    : Colors.grey,
              ),
              label: 'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/input_icon.svg',
                color: _currentIndex == 2
                    ? theme.colorScheme.primary
                    : Colors.grey,
              ),
              label: 'Input',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/profile_icon.svg',
                color: _currentIndex == 3
                    ? theme.colorScheme.primary
                    : Colors.grey,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      floatingActionButton: _currentIndex == 1
          ? Container(
              decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(
                    Icons.filter_alt_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Filter',
                    style: theme.textTheme.titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ))
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
