import 'package:flutter/material.dart';
import '../../constants/sizes.dart';

class MyNotificationMessages extends StatelessWidget {
  const MyNotificationMessages({
    super.key,
    required this.icon,
    required this.descriptionText,
    required this.discountText,
  });

  final String? discountText;
  final String? descriptionText;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sized.md),
      alignment: Alignment.center,
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Sized.borderRadiusXl),
      ),
      child: Row(
        children: [
          // Icon
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.black,
            ),
            child: IconButton(
              alignment: Alignment.center,
              onPressed: () {},
              // icon: const Icon(
              //   Iconsax.discount_shape5,
              //   color: Colors.white,
              //   size: Sized.iconLg,
              // ),
              icon: icon,
            ),
          ),
          const SizedBox(width: Sized.lg),

          // Promotion Texts
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                discountText!,
                style: const TextStyle(
                  fontSize: Sized.fontSizeLg,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: Sized.xs),
              Text(
                descriptionText!,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
