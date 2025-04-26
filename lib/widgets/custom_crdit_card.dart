import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_final_design/utils/app_images.dart';
import 'package:responsive_final_design/utils/app_style.dart';

class CustomCrditCard extends StatelessWidget {
  const CustomCrditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(image: AssetImage(Assets.imagesCard)),
          color: const Color(0xff4eb7f2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(
                top: 16,
                right: 42,
                left: 31,
              ),
              title: Text(
                'Name card',
                style: AppStyle.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: const Text('Syah Bandi', style: AppStyle.styleMedium20),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyle.styleSemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12/20 - 142',
                    style: AppStyle.styleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 54 - 28),
          ],
        ),
      ),
    );
  }
}
