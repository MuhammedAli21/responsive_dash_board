import 'package:flutter/material.dart';
import 'package:responsive_final_design/utils/app_style.dart';
import 'package:responsive_final_design/widgets/dots_generator.dart';
import 'package:responsive_final_design/widgets/my_card_page_view.dart';

class CardSection extends StatefulWidget {
  const CardSection({super.key});

  @override
  State<CardSection> createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("My Card", style: AppStyle.styleSemiBold20),
        const SizedBox(height: 20),
        MyCardPageView(pageController: pageController),
        const SizedBox(height: 20),
        DotsIndecator(currentPageIndex: currentIndex),
      ],
    );
  }
}
