import 'package:flutter/material.dart';
import 'package:responsive_final_design/models/all_expensess_item_model.dart';
import 'package:responsive_final_design/utils/app_images.dart';
import 'package:responsive_final_design/widgets/all_expensess_header.dart';
import 'package:responsive_final_design/widgets/all_expensess_item.dart';
import 'package:responsive_final_design/widgets/custom_container.dart';

class AllExpensess extends StatefulWidget {
  const AllExpensess({super.key});

  @override
  State<AllExpensess> createState() => _AllExpensessState();
}

class _AllExpensessState extends State<AllExpensess> {
  final List<AllExpensessItemModel> allExpensessItems = [
    const AllExpensessItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      amount: r'$20,500',
    ),
    const AllExpensessItemModel(
      image: Assets.imagesIncome,
      title: 'Icome',
      date: 'April 2022',
      amount: r'$20,500',
    ),
    const AllExpensessItemModel(
      image: Assets.imagesExoenses,
      title: 'Expenses',
      date: 'April 2022',
      amount: r'$20,500',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CusotmContainer(
      child: Column(
        children: [
          const AllExpensessHeader(),
          const SizedBox(height: 16),
          Row(
            children: [...customListGenerate()],

            // allExpensessItems.asMap().entries.map((e) {
            //   int index = e.key;
            //   var allExpensessItem = e.value;
            //   if (index == 1) {
            //     return Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 12),
            //       child: AllExpensessItem(itemModel: allExpensessItem),
            //     );
            //   } else {
            //     return Expanded(
            //       child: AllExpensessItem(itemModel: allExpensessItem),
            //     );
            //   }
            // }).toList(),
          ),
        ],
      ),
    );
  }

  List<Widget> customListGenerate() {
    return List.generate(allExpensessItems.length, (index) {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding:
                index == 1
                    ? const EdgeInsets.symmetric(horizontal: 12)
                    : EdgeInsets.zero,
            child: AllExpensessItem(
              itemModel: allExpensessItems[index],
              isSelected: selectedIndex == index,
            ),
          ),
        ),
      );
    });
  }
}
