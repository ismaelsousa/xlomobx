import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:xlomobx/screens/home/home_screen.dart';
import 'package:xlomobx/stores/page_store.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageStore pageStore = GetIt.I<PageStore>();

  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    reaction((_) => pageStore.page, (int page) {
      pageController.jumpToPage(page);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          const HomeScreen(),
          Container(color: Colors.green),
          Container(color: Colors.yellow),
          Container(color: Colors.purple),
          Container(color: Colors.brown),
        ],
      ),
    );
  }
}
