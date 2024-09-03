


import 'package:bookmark/dummydata/storage/firestore.dart';
import 'package:flutter/material.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: camel_case_types
class Add_destination extends StatefulWidget {
  const Add_destination({super.key});

  @override
  State<Add_destination> createState() => _Add_destinationState();
}

// ignore: camel_case_types
class _Add_destinationState extends State<Add_destination> {
 void selectImage(){}
  





  final FirestoreDestinations firestoreDestinations = FirestoreDestinations();
  TextEditingController nameofPlacecontroller = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const SizedBox(
            height: 180,
          ),
          Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child:   Text(
                  "Add a destination gem:",
                  style:  TextStyle(
                      color: Color.fromARGB(255, 185, 85, 30), fontSize: 36),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 30,),
              TextField(
                controller: nameofPlacecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  hintText: ("Name of Destination"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: categoryController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  hintText: ("Category"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: locationController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  hintText: ("Location"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton.icon(
                style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 225, 158, 116))),
                onPressed: selectImage,
                label: const Text('Add image'),
                icon: const Icon(PhosphorIconsRegular.plusCircle),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "cancel",
                    style: TextStyle(color: Colors.black45),
                  )),
              ElevatedButton(
                style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 185, 85, 30))),
                  onPressed: () {
                    firestoreDestinations.addDestination(
                        nameofPlacecontroller.text,
                        locationController.text,
                        categoryController.text,
                        );

                    nameofPlacecontroller.clear();
                    locationController.clear();
                    categoryController.clear();
                    

                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white70),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
                   
                         /* titlePadding: const EdgeInsets.all(12),
                          title: const Text('Add a destination gem'),
                          scrollable: true,
                          actions: [
                            TextField(
                              controller: nameofPlacecontroller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                hintText: ("NameofPlace"),
                              ),
                            ),
                            TextField(
                              controller: locationController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                hintText: ("Category"),
                              ),
                            ),
                            TextField(
                              controller: imagePathController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                hintText: ("Location"),
                              ),
                            ),
                            TextField(
                              controller: categoryController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                hintText: ("imagepath"),
                              ),
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "cancel",
                                      style: TextStyle(color: Colors.black45),
                                    )),
                                ElevatedButton(
                                    onPressed: () {
                                      firestoreDestinations.addDestination(
                                          nameofPlacecontroller.text,
                                          locationController.text,
                                          categoryController.text,
                                          imagePathController.text);

                                      nameofPlacecontroller.clear();
                                      locationController.clear();
                                      categoryController.clear();
                                      imagePathController.clear();

                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Add',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.amber),
                                    ))
                              ],
                            )
                          ],*/
                     