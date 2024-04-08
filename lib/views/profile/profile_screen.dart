import 'package:e_commerce/constants/colors/ColorConstants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/sizes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool showFilterDialog = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Icon(
            Iconsax.profile_circle5,
            size: 32,
          ),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.more_circle,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: Sized.spaceBtwItems),

                // Profile
                Container(
                  width: 130,
                  height: 130,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 130,
                        height: 130,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            'https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2F471a979e-cadc-11ec-a118-514c2c06bc05.jpg?crop=2383%2C2383%2C2174%2C60',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      /// -- Favorite Icons Button
                      Positioned(
                        bottom: 5,
                        right: 1,
                        child: Container(
                          width: Sized.iconMd * 1.5,
                          height: Sized.iconMd * 1.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          alignment: Alignment.center,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Iconsax.edit_25,
                              color: Colors.white,
                              size: Sized.iconSm,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: Sized.sm),

                // Username
                const Text(
                  'Dr Srange',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: Sized.sm),

                Divider(
                  color: Colors.grey.shade200,
                ),
                const SizedBox(height: Sized.sm),

                // List of profile details
                ListTile(
                  onTap: () {},
                  leading: const Icon(Iconsax.user),
                  title: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  trailing: const Icon(Iconsax.arrow_right_3),
                ),

                // Address
                ListTile(
                  onTap: () {},
                  leading: const Icon(Iconsax.location),
                  title: const Text(
                    'Address',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  trailing: const Icon(Iconsax.arrow_right_3),
                ),

                // Notification
                ListTile(
                  onTap: () {},
                  leading: const Icon(Iconsax.notification),
                  title: const Text(
                    'Notification',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  trailing: const Icon(Iconsax.arrow_right_3),
                ),

                // Payment
                ListTile(
                  onTap: () {},
                  leading: const Icon(Iconsax.wallet_2),
                  title: const Text(
                    'Payment',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  trailing: const Icon(Iconsax.arrow_right_3),
                ),

                // Security
                ListTile(
                  onTap: () {},
                  leading: const Icon(Iconsax.shield_tick),
                  title: const Text(
                    'Security',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  trailing: const Icon(Iconsax.arrow_right_3),
                ),

                // Language
                ListTile(
                  onTap: () {},
                  leading: const Icon(Iconsax.translate),
                  title: const Text(
                    'Language',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  trailing: const Text(
                    'English (US)',
                    style: TextStyle(fontSize: 16),
                  ),
                ),

                // Dark Mode
                ListTile(
                  onTap: () {},
                  leading: const Icon(Iconsax.moon),
                  title: const Text(
                    'Dark Mode',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  trailing: const Icon(Iconsax.arrow_right_3),
                ),

                // Privacy Policy
                ListTile(
                  onTap: () {},
                  leading: const Icon(Iconsax.lock),
                  title: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  trailing: const Icon(Iconsax.arrow_right_3),
                ),

                // Log out
                ListTile(
                  onTap: () {
                    setState(() {
                      showFilterDialog = true;
                    });
                    _showFilterDialog(context);
                  },
                  leading: const Icon(
                    Iconsax.logout,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Logout',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future _showFilterDialog(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.white,
      enableDrag: true,
      isScrollControlled: true,
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Logout',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: Sized.spaceBtwItems),
            const Divider(),
            const SizedBox(height: Sized.spaceBtwItems),
            const Text(
              'Are you sure you want to log out?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: Sized.defaultSpace),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 180,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.black,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Yes, Logout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: Sized.defaultSpace),
          ],
        ),
      ),
    );
  }
}
