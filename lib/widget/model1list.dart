// ignore_for_file: unnecessary_import, unused_import, implementation_imports, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopingapp/model/model.dart';
import 'package:shopingapp/screens/checkout_page.dart';

class Model1list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CheckoutPage(
                      img: model1[index].img,
                      name: model1[index].name,
                      price: model1[index].price),
                ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "${model1[index].img}",
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${model2[index].name}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              "\$${model1[index].price}",
                              style: const TextStyle(
                                  color: Colors.black38, fontSize: 16),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (_, index) {
            return const SizedBox(
              width: 8,
            );
          },
          itemCount: model1.length),
    );
  }
}
