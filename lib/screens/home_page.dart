// ignore_for_file: unnecessary_import, implementation_imports

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopingapp/model/model.dart';
import 'package:shopingapp/widget/model1list.dart';
import 'package:shopingapp/widget/model2list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Icon(
                            Icons.search,
                          ),
                        ),
                      ),
                    ],
                  )),
              const Text(
                "Hi-Fi Shop & Service",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Audio shop on Rustaveli Ave 57.",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "This shop offers both products and services.",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text(
                    "Products",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    " ${model1.length}",
                    style: const TextStyle(color: Colors.black38, fontSize: 20),
                  ),
                  const Spacer(),
                  const Text(
                    "Show all",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(flex: 4, child: Model1list()),
              Row(
                children: [
                  const Text(
                    "Accessories",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "${model2.length}",
                    style: const TextStyle(color: Colors.black38, fontSize: 20),
                  ),
                  const Spacer(),
                  const Text(
                    "Show all",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Expanded(flex: 4, child: Model2list()),
            ],
          ),
        ),
      ),
    );
  }
}
