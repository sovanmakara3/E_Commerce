import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../constants/ColorConstants.dart';
import 'body_screen.dart';

class AppBars extends StatelessWidget {
  const AppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: ColorConstants.backgroundColor50,
            surfaceTintColor: Colors.transparent,
            floating: true,
            snap: true,
            foregroundColor: Colors.black,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'assets/icons/jinwoo.jpg',
                fit: BoxFit.cover,
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning!',
                  // style: GoogleFonts.outfit(
                  //     fontSize: 16,
                  //     color: Colors.grey.shade700,
                  //     fontWeight: FontWeight.w300),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'Sung Jin Woo',
                  // style: GoogleFonts.outfit(fontWeight: FontWeight.w600),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            actions: [
              SizedBox(
                height: 26,
                child: Image.asset(
                  'assets/icons/notification.png',
                ),
              ),
              const SizedBox(width: 20),
              SizedBox(
                height: 26,
                child: Image.asset(
                  'assets/icons/heart.png',
                ),
              ),
            ],
            expandedHeight: 150,
            flexibleSpace: ListView(
              children: [
                const SizedBox(height: 80),
                SizedBox(
                  height: 55,
                  child: TextField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: 'Search',
                      // labelStyle: GoogleFonts.outfit(
                      //   fontSize: 14,
                      //   fontWeight: FontWeight.w300,
                      //   color: Colors.grey.shade500,
                      // ),
                      labelStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey.shade500),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(14),
                        child: Icon(
                          FluentIcons.search_20_filled,
                          color: Colors.grey,
                        ),
                      ),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(
                          FluentIcons.options_20_regular,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => BodyScreen(),
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
