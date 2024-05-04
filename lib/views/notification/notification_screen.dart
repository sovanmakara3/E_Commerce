import 'package:e_commerce/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'noti_messages/noti_messages.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Iconsax.arrow_left_2),
        ),
        title: const Text(
          'Notifications',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Today label
            Text(
              'Today',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: Sized.spaceBtwItems),

            // Item Container
            MyNotificationMessages(
              icon: Icon(
                Iconsax.discount_shape5,
                color: Colors.white,
              ),
              discountText: '20% Special Discount!',
              descriptionText: 'this promotion only valid today',
            ),
            SizedBox(height: Sized.spaceBtwItems),
            MyNotificationMessages(
              icon: Icon(
                Iconsax.location5,
                color: Colors.white,
              ),
              discountText: 'New Services Available!',
              descriptionText: 'Now you can track orders in real time',
            ),

            // Yesterday Label
            SizedBox(height: Sized.defaultSpace),
            Text(
              'Yesterday',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: Sized.spaceBtwItems),
            MyNotificationMessages(
              icon: Icon(
                Iconsax.empty_wallet5,
                color: Colors.white,
              ),
              discountText: 'Top Up E-Wallet Successfully!',
              descriptionText: 'You have to top up your e-wallet',
            ),

            // December 21 Label
            SizedBox(height: Sized.defaultSpace),
            Text(
              'December 21, 2023',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: Sized.spaceBtwItems),
            MyNotificationMessages(
              icon: Icon(
                Iconsax.card5,
                color: Colors.white,
              ),
              discountText: 'Credit Card Connected!',
              descriptionText: 'Credit Card has been linked!',
            ),

            SizedBox(height: Sized.spaceBtwItems),
            MyNotificationMessages(
              icon: Icon(
                Iconsax.profile_circle5,
                color: Colors.white,
              ),
              discountText: 'Account Setup Succesful!',
              descriptionText: 'Your account has been creatd!',
            ),
          ],
        ),
      ),
    );
  }
}
