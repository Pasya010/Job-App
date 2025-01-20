import 'package:flutter/material.dart';
import 'package:jobs_app/screens/register_screen.dart';
import 'package:jobs_app/screens/signin_screen.dart';

class PagesNavigator extends StatefulWidget {
  const PagesNavigator({super.key});

  @override
  State<PagesNavigator> createState() => _PagesNavigatorState();
}

class _PagesNavigatorState extends State<PagesNavigator> {
  final PageController _pageController = PageController(initialPage: 0);
  int selectedIndex = 0;

  void navigatePages(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Expanded(
              child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            children: [
              RegisterScreen(),
              SigninScreen(),
            ],
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () => navigatePages(0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: selectedIndex == 0
                            ? Colors.deepPurple
                            : Colors.grey,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            topLeft: Radius.circular(12))),
                    alignment: Alignment.center,
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () => navigatePages(1),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: selectedIndex == 1
                            ? Colors.deepPurple
                            : Colors.grey,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(12),
                            topRight: Radius.circular(12))),
                    alignment: Alignment.center,
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
