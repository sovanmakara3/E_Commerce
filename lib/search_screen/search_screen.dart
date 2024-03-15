import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

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
              icon: const Icon(Iconsax.arrow_left),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SizedBox(
                  height: 55,
                  child: TextField(
                    autofocus: true,
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
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(14),
                        child: Icon(
                          Iconsax.search_normal_1,
                          color: Colors.grey,
                        ),
                      ),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(Iconsax.setting_4),
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
}
