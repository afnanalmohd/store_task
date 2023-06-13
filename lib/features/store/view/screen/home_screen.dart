import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product/core/routes/route.dart';
import 'package:product/core/theme/app_colors.dart';
import '../../logic/controller/store_controller.dart';
import '../widget/bulidCardItems.dart';

class HomeScreen extends StatelessWidget {
  @override
  HomeScreen({Key? key}) : super(key: key);

  final storeController = Get.find<StoreController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Store App"),
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.category,
                color: mainColor,
              ),
              onPressed: () {
                Get.toNamed(Routes.categoriesScreen);
              },
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30,
            ),
            const SizedBox(
              height: 50,
              child: Text(
                "categories",
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: GetBuilder<StoreController>(builder: (controller) {
                  return FutureBuilder(
                      future: storeController.getAllData(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                    childAspectRatio: 0.8,
                                    mainAxisSpacing: 9.0,
                                    crossAxisSpacing: 6.0,
                                    maxCrossAxisExtent: 200),
                            itemCount: snapshot.data?.length,
                            itemBuilder: (context, index) {
                              var data = snapshot.data?[index];
                              return BuildCardItems(
                                data: data,
                                controller: storeController,
                                index: index,
                              );

                            },
                          );
                        } else {
                          return const Center(
                            child: Text("three are no items"),
                          );
                        }
                      });
                }),
              ),
            ),
          ],
        ));
  }
}
