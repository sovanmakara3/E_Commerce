import 'package:e_commerce/constants/colors/ColorConstants.dart';
import 'package:e_commerce/constants/sizes.dart';
import 'package:e_commerce/data/response/status.dart';
import 'package:e_commerce/views/add_products/models/request/product_request.dart';
import 'package:e_commerce/views/add_products/viewmodels/add_product_viewmodel.dart';
import 'package:e_commerce/views/add_products/viewmodels/image_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import 'widgets/textfield_sample.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  bool isPicked = false;
  final _imageViewModel = ImageViewModel();
  var imageID;

  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final rateController = TextEditingController();
  final qtyController = TextEditingController();
  final descriptionController = TextEditingController();
  final categoryController = TextEditingController();

  final _addProductViewModel = AddProductViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ChangeNotifierProvider(
              create: (context) => AddProductViewModel(),
              child: Consumer<AddProductViewModel>(
                builder: (context, viewModel, _) {
                  if (viewModel.response.status == null) {
                    return TextButton(
                      onPressed: () {
                        _saveProduct();
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    );
                  }
                  switch (viewModel.response.status!) {
                    case Status.LOADING:
                      return const Center(child: CircularProgressIndicator());
                    case Status.COMPLETED:
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Post Success'),
                      ));
                      return TextButton(
                        onPressed: () {
                          _saveProduct();
                        },
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      );
                    case Status.ERROR:
                      return Text('Error');
                  }
                },
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  // Image Box
                  ChangeNotifierProvider(
                    create: (context) => _imageViewModel,
                    child: Consumer<ImageViewModel>(
                      builder: (context, viewModel, _) {
                        if (viewModel.response.status == null) {
                          return Image.network(
                            'https://cdn-icons-png.flaticon.com/128/6590/6590965.png',
                            fit: BoxFit.cover,
                          );
                        }
                        switch (viewModel.response.status!) {
                          case Status.LOADING:
                            return const Center(
                                child: CircularProgressIndicator());
                          case Status.COMPLETED:
                            imageID = viewModel.response.data[0].id;
                            return SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  'https://cms.istad.co${viewModel.response.data[0].url!}',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          case Status.ERROR:
                            return Text(viewModel.response.message!);
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: Sized.md),

                  // Choose Image
                  InkWell(
                    onTap: () {
                      _getImageFromSource();
                    },
                    highlightColor: Colors.transparent,
                    splashColor: MyColors.softGrey,
                    borderRadius: BorderRadius.circular(20),
                    child: const Text(
                      'Choose your image',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: Sized.md),
                  const Divider(),
                  const SizedBox(height: Sized.spaceBtwSections),

                  // Product name
                  MyTextField(
                    controller: nameController,
                    title: 'Product Name',
                    type: TextInputType.text,
                    action: TextInputAction.next,
                  ),
                  const SizedBox(height: Sized.spaceBtwInputFields),

                  // Product price
                  MyTextField(
                    controller: priceController,
                    title: 'Price',
                    type: TextInputType.number,
                    action: TextInputAction.next,
                  ),
                  const SizedBox(height: Sized.spaceBtwInputFields),

                  // Product rating
                  MyTextField(
                    controller: rateController,
                    title: 'Rate',
                    type: TextInputType.number,
                    action: TextInputAction.next,
                  ),
                  const SizedBox(height: Sized.spaceBtwInputFields),

                  // Product quantity
                  MyTextField(
                    controller: qtyController,
                    title: 'Quantity',
                    type: TextInputType.number,
                    action: TextInputAction.next,
                  ),
                  const SizedBox(height: Sized.spaceBtwInputFields),

                  // Product description
                  MyTextField(
                    controller: descriptionController,
                    title: 'Description',
                    type: TextInputType.text,
                  ),
                  const SizedBox(height: Sized.spaceBtwInputFields),

                  // Category
                  MyTextField(
                    controller: categoryController,
                    title: 'Category',
                    type: TextInputType.text,
                  ),
                  const SizedBox(height: Sized.spaceBtwInputFields),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _getImageFromSource() async {
    XFile? pickFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickFile != null) {
      _imageViewModel.uploadImage(pickFile.path);
    }
  }

  void _saveProduct() {
    var productRequest = ProductRequest(
        data: Data(
      title: nameController.text,
      price: priceController.text,
      rating: rateController.text,
      quantity: qtyController.text,
      description: descriptionController.text,
      category: categoryController.text,
      thumbnail: imageID.toString(),
    ));

    _addProductViewModel.postProduct(productRequest);
  }
}
