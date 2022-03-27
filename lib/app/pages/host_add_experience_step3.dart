import 'package:flutter/material.dart';
import 'package:musea/app/const/colors.dart';
import 'package:musea/app/const/helper.dart';

import 'package:musea/app/pages/host_experience.dart';


class HostAddExperienceStep3 extends StatefulWidget {
  const HostAddExperienceStep3({Key? key}) : super(key: key);

  @override
  _HostaAddExperienceStep3 createState() => _HostaAddExperienceStep3();
}

class _HostaAddExperienceStep3 extends State<HostAddExperienceStep3>{

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
                  padding: const EdgeInsets.only(top: 0, bottom: 30),
                  child: const Text("Booking Settings", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Poppins')),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'guest',
                      labelText: 'Total Guest',
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
                  margin: const EdgeInsets.only(bottom: 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'price',
                      labelText: 'Guest Pricing',
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
                  padding: const EdgeInsets.only(top: 40, bottom: 8),
                  child: const Text("Location", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Poppins')),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: const Text("Upload image map location.", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'Poppins', color:  Colors.grey)),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextButton(
                    onPressed: () {

                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(const MuseaColors().museaPrimary),
                    ),
                    child: const Text('Choose Images'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Url',
                      labelText: 'Url Google Maps',
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
                    Helper.nextPage(context, const HostExperience());
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(const MuseaColors().museaPrimary),
                  ),
                  child: const Text('Finish'),
                ),
            )
          ],
        ),
      ),
    );
  }
}