import 'package:flutter/material.dart';
import 'package:responsive_final_design/widgets/custome_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [Expanded(child: CustomeDrawer())]);
  }
}
