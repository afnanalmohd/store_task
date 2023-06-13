import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:product/features/categories/model/categories_model.dart';
import '../../../store/logic/controller/store_controller.dart';

class ListItem extends StatelessWidget {
  final CategoriesModel? dataCat;
  final int index;
  final StoreController controller;

  const ListItem(
      {super.key,
      required this.dataCat,
      required this.controller,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StoreController>(builder: (controller) {
      return Column(
        children: [
          Card(
            margin: const EdgeInsets.only(right: 8, left: 8, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 4,
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(dataCat!.jewelery,
                                  overflow: TextOverflow.ellipsis),
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
  }
}
