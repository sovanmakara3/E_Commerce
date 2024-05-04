import 'package:e_commerce/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  bool showFilterDialog = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
            IconButton(
              padding: const EdgeInsets.all(16),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Iconsax.arrow_left_2,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SizedBox(
                  height: 55,
                  child: Form(
                    child: TextFormField(
                      autofocus: false,
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'Search',
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
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 1.1,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Iconsax.search_normal_1,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(Iconsax.setting_45),
                          onPressed: () {
                            setState(() {
                              showFilterDialog = true;
                            });
                            _showFilterDialog(context);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _showFilterDialog(BuildContext context) {
    return showModalBottomSheet(
      enableDrag: true,
      isScrollControlled: true,
      context: context,
      builder: (context) => const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Sort & Filter',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: Sized.defaultSpace),
            Text(
              'Categories',
              style: TextStyle(
                fontSize: Sized.fontSizeLg,
                fontWeight: FontWeight.w500,
              ),
            ),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text('Video'),
            ),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text('Video'),
            ),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text('Video'),
            ),
          ],
        ),
      ),
    );
  }
}
