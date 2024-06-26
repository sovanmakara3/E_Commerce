import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../constants/sizes.dart';
import '../../../notification/notification_screen.dart';
import '../body_screen/body_screen.dart';
import '../search_screen/search_screen.dart';

class AppBars extends StatelessWidget {
  const AppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            floating: true,
            snap: true,
            // pinned: true,
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/icons/jinwoo.jpg',
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Text(
                  'Sung Jin Woo',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            actions: [
              Stack(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const NotificationScreen()));
                    },
                    icon: const Icon(Iconsax.notification),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // IconButton(
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const FavoriteScreen()));
              //   },
              //   icon: const Icon(Iconsax.heart),
              // ),
            ],
            expandedHeight: 150,
            flexibleSpace: ListView(
              children: [
                const SizedBox(height: 80),
                // SizedBox(
                //   height: 55,
                //   child: TextField(
                //     // onTap: () {
                //     //   Navigator.push(
                //     //     context,
                //     //     PageTransition(
                //     //       type: PageTransitionType.fade,
                //     //       duration: Duration(milliseconds: 300),
                //     //       child: SearchScreen(),
                //     //     ),
                //     //   );
                //     // },
                //     decoration: InputDecoration(
                //       floatingLabelBehavior: FloatingLabelBehavior.never,
                //       labelText: 'Search',
                //       labelStyle: TextStyle(
                //           fontSize: 14,
                //           fontWeight: FontWeight.w300,
                //           color: Colors.grey.shade500),
                //       fillColor: Colors.grey.shade200,
                //       filled: true,
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10),
                //         borderSide: BorderSide.none,
                //       ),
                //       prefixIcon: const Padding(
                //         padding: EdgeInsets.all(14),
                //         child: Icon(
                //           Iconsax.search_normal_1,
                //           color: Colors.grey,
                //         ),
                //       ),
                //       suffixIcon: const Padding(
                //         padding: EdgeInsets.all(16.0),
                //         child: Icon(Iconsax.setting_4),
                //       ),
                //     ),
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: const Duration(milliseconds: 300),
                        child: const SearchScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Iconsax.search_normal_1,
                          color: Colors.grey,
                        ),
                        SizedBox(width: Sized.md),
                        Text(
                          'Search for products',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        Spacer(),
                        Icon(Iconsax.setting_4),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const BodyScreen(),
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
