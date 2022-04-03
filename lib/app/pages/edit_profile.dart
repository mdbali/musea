import 'package:flutter/material.dart';
import 'package:musea/app/const/helper.dart';
import 'package:musea/app/const/colors.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 0, bottom: 40),
                  child: const Text("Edit Personal Information ", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Poppins')),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: TextFormField(
                    controller: TextEditingController(text: "Adi"),
                    decoration: InputDecoration(
                      hintText: '',
                      labelText: 'First Name',
                      enabledBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(4),
                        borderSide:  const BorderSide(color: Colors.black ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(4),
                        borderSide:  const BorderSide(color: Colors.black ),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                    ),
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: TextFormField(
                    controller: TextEditingController(text: "Yoga"),
                    decoration: InputDecoration(
                      hintText: '',
                      labelText: 'Last Name',
                      enabledBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(4),
                        borderSide:  const BorderSide(color: Colors.black ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(4),
                        borderSide:  const BorderSide(color: Colors.black ),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                    ),
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: TextFormField(
                    controller: TextEditingController(text: "adiyoga@gmail.com"),
                    decoration: InputDecoration(
                      hintText: 'your email',
                      labelText: 'Email Address',
                      enabledBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(4),
                        borderSide:  const BorderSide(color: Colors.black ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(4),
                        borderSide:  const BorderSide(color: Colors.black ),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                    ),
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: TextFormField(
                    controller: TextEditingController(text: "081239132666"),
                    decoration: InputDecoration(
                      hintText: 'your phone',
                      labelText: 'Phone Number',
                      enabledBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(4),
                        borderSide:  const BorderSide(color: Colors.black ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(4),
                        borderSide:  const BorderSide(color: Colors.black ),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                    ),
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    controller: TextEditingController(text: "Jalan Denpasar, No 1 Bali"),
                    minLines: 4, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: 'Address',
                      enabledBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(4),
                        borderSide:  const BorderSide(color: Colors.black ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(4),
                        borderSide:  const BorderSide(color: Colors.black ),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {

          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(const MuseaColors().museaPrimary),
          ),
          child: const Text('Save'),
        ),
      ),
    );
  }
}