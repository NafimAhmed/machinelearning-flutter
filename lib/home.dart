



import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


   ImagePicker imagePicker=ImagePicker();
  File? image;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [

          image==null?Icon(Icons.image_outlined,size: 150,):Image.file(image!),
          Center(child: IconButton(onPressed: () async {

            XFile? selectedImage=await imagePicker.pickImage(source: ImageSource.gallery);

            if(selectedImage!=null){


              setState(() {
                image=File(selectedImage.path);
              });
            }


          }, icon: Icon(Icons.camera,size: 50,),),)

        ],
      ),
    );
  }
}