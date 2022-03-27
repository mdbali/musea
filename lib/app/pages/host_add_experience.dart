import 'package:flutter/material.dart';
import 'package:musea/app/const/colors.dart';
import 'package:musea/app/const/helper.dart';

import 'package:musea/app/pages/host_add_experience_step2.dart';


class HostAddExperience extends StatefulWidget {
  const HostAddExperience({Key? key}) : super(key: key);

  @override
  _HostaAddExperience createState() => _HostaAddExperience();
}

class _HostaAddExperience extends State<HostAddExperience>{

  
  final cities = ['Denpasar', 'Badung', 'Gianyar', 'Klungkung', 'Karangasem','Bangli','Buleleng','Negara','Tabanan'];
  String? value;

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 48, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 0, bottom: 40),
                  child: const Text("Add New Experience", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Poppins')),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: const Text("Which city do you want to host your experience in?", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, fontFamily: 'Poppins')),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  margin: const EdgeInsets.only(bottom: 30),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: value,
                      isExpanded: true,
                      items: cities.map(buildMenuItem).toList(),
                      onChanged: (value) => setState(() => this.value = value),
                    ),
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Title Experience',
                      labelText: 'Title Experience',
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
                  padding: const EdgeInsets.only(top:40, bottom: 16),
                  child: const Text("Let's describe your experience", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, fontFamily: 'Poppins')),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 0),
                  child: TextFormField(
                    minLines: 6, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
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
                ),
                Container(
                  padding: const EdgeInsets.only(top:30, bottom: 16),
                  child: const Text("How long is your experience?", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, fontFamily: 'Poppins')),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Duration',
                      labelText: 'Duration',
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 8, bottom:8, left: 15, right: 15),
        child: Row(
          children: [
            const Expanded(
              child: Text(""),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    Helper.nextPage(context, const HostAddExperienceStep2());
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(const MuseaColors().museaPrimary),
                  ),
                  child: const Text('Next'),
                ),
            )
          ],
        ),
      ),
    );
  }
}