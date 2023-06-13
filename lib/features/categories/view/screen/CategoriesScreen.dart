import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../store/logic/controller/store_controller.dart';

class CategoriesScreen extends StatelessWidget {
  final storeController = Get.find<StoreController>();

  CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Categories "),
          elevation: 0,
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
                      future: storeController.getAllDataCategories(),
                      builder: (context, AsyncSnapshot<List> snapshot) {

                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.data == null) {
                            return const Center(
                                child: Text('Something went wrong'));
                          } else if (snapshot.hasData) {
                            return ListView.builder(
                                itemCount: snapshot.data?.length ?? 0,
                                itemBuilder: (context, index) {
                                  print(snapshot.data!.length);
                                  return GetBuilder<StoreController>(
                                      builder: (controller) {
                                    return Column(
                                      children: [
                                        Card(
                                          margin: const EdgeInsets.only(
                                              right: 8, left: 8, bottom: 5),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                flex: 0,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const SizedBox(
                                                            height: 4,
                                                          ),
                                                          SizedBox(
                                                            width: 200,
                                                            child: Text(
                                                                snapshot.data![
                                                                    index],
                                                                overflow:
                                                                    TextOverflow.ellipsis),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  });
                                });
                          }
                        }

                        return Container(
                          height: 30,
                          width: 30,
                          child:  CircularProgressIndicator()
                        ) ;
                      });
                }
                ),
              ),
            ),
          ],
        ));
  }
}
