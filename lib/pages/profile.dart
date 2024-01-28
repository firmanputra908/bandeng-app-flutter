import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:project_tas/service/auth.dart';
import 'package:project_tas/service/auth.dart';
import 'package:project_tas/service/shared_pref.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? profile, name, email;
  // final ImagePicker _picker = ImagePicker();
  // File? selectedImage;

  // Future getImage() async {
  //   var image = await _picker.pickImage(source: ImageSource.gallery);

  //   selectedImage = File(image!.path);
  //   setState(() {
  //     uploadItem();
  //   });
  // }

  // uploadItem() async {
  //   if (selectedImage != null) {
  //     String addId = randomAlphaNumeric(10);

  //     Reference firebaseStorageRef =
  //         FirebaseStorage.instance.ref().child("blogImages").child(addId);
  //     final UploadTask task = firebaseStorageRef.putFile(selectedImage!);

  //     var downloadUrl = await (await task).ref.getDownloadURL();
  //     await SharedPreferenceHelper().saveUserProfile(downloadUrl);
  //     setState(() {
        
  //     });
  //   }
  // }

  getthesharedpref() async {
    profile = await SharedPreferenceHelper().getUserProfile();
    name = await SharedPreferenceHelper().getUserName();
    email = await SharedPreferenceHelper().getUserEmail();
    setState(() {});
  }

  onthisload() async {
    await getthesharedpref();
    setState(() {});
  }

  @override
  void initState() {
    onthisload();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: profile==null? CircularProgressIndicator(): Container(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 6.5),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(60),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        // child: selectedImage==null?  GestureDetector(
                        child: GestureDetector(
                          onTap: (){
                            // getImage();
                          },
                          child: Image.asset("images/boy.jpg", height: 120, width: 120, fit: BoxFit.cover,) 
                          // :Image.network(
                          // profile!,
                          //   height: 120,
                          //   width: 120,
                          //   fit: BoxFit.cover,
                          // ),
                        )
                        // : Image.file(selectedImage!,  height: 120,
                        //     width: 120,
                        //     fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            // name!,
                            "Firmansyah"
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                          //  email!,
                          "firmanputra909@gmail.com"
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 30.0,
            // ),
            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 20.0),
            //   child: Material(
            //     borderRadius: BorderRadius.circular(10),
            //     elevation: 2.0,
            //     child: Container(
            //       padding: const EdgeInsets.symmetric(
            //         vertical: 15.0,
            //         horizontal: 10.0,
            //       ),
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(10)),
            //       child: const Row(
            //         children: [
            //           Icon(
            //             Icons.description,
            //             color: Colors.black,
            //           ),
            //           SizedBox(
            //             width: 20.0,
            //           ),
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "Terms and Condition",
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 20.0,
            //                     fontWeight: FontWeight.w600),
            //               )
            //             ],
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              onTap: (){
                AuthMethods().deleteuser();
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 2.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 10.0,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delete Account",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              onTap: (){
                AuthMethods().SignOut();
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 2.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 10.0,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "LogOut",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
